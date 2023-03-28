import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_reddit_clone/development/constants/constants.dart';
import 'package:flutter_reddit_clone/development/constants/firebase_constants.dart';
import 'package:flutter_reddit_clone/development/models/user_model.dart';
import 'package:flutter_reddit_clone/development/core/providers/firebase_providers.dart';
import 'package:flutter_reddit_clone/development/core/failure.dart';
import 'package:flutter_reddit_clone/development/core/type_defs.dart';

final authRepositoryProvider = Provider(
  (ref) {
    return AuthRepository(
      auth: ref.read(authProvider),
      firestore: ref.read(firestoreProvider),
      googleSignIn: ref.read(googleSignInProvider),
    );
  },
);

class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  AuthRepository({
    required FirebaseAuth auth,
    required FirebaseFirestore firestore,
    required GoogleSignIn googleSignIn,
  })  : _auth = auth,
        _firestore = firestore,
        _googleSignIn = googleSignIn;

  CollectionReference get _users =>
      _firestore.collection(FirebaseConstants.usersCollection);

  Stream<User?> get authStateChange => _auth.authStateChanges();

  // Google Sign In implementation
  FutureEither<UserModel> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final googleAuth = (await googleUser?.authentication);
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final userCredential = await _auth.signInWithCredential(credential);
      final user = userCredential.user;

      UserModel userModel;
      // if it's a new user save the data into database
      if (userCredential.additionalUserInfo!.isNewUser) {
        userModel = UserModel(
            name: user!.displayName ?? 'No Name',
            profilePic: user.photoURL ?? Constants.avatarDefault,
            banner: Constants.bannerDefault,
            uid: user.uid,
            isAuthenticated: true,
            karma: 0,
            awards: []);

        // save (set) data into firestore
        // toMap is used to convert user model into map form
        await _users.doc(user.uid).set(userModel.toMap());
      } else {
        userModel = await getUserData(user!.uid).first;
      }
      return right(userModel);
      // TODO
      // else if user is already sign up go to another page
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<UserModel> getUserData(String uid) {
    return _users.doc(uid).snapshots().map(
          (event) => UserModel.fromMap(event.data() as Map<String, dynamic>),
        );
  }
}
