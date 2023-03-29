class Subreddit {
  Subreddit({
    this.approvedAtUtc,
    required this.subreddit,
    required this.selftext,
    required this.authorFullname,
    required this.saved,
    this.modReasonTitle,
    required this.gilded,
    required this.clicked,
    required this.title,
    required this.linkFlairRichtext,
    required this.subredditNamePrefixed,
    required this.hidden,
    required this.pwls,
    this.linkFlairCssClass,
    required this.downs,
    required this.thumbnailHeight,
    this.topAwardedType,
    required this.hideScore,
    required this.name,
    required this.quarantine,
    required this.upvoteRatio,
    this.authorFlairBackgroundColor,
    required this.subredditType,
    required this.ups,
    required this.totalAwardsReceived,
    required this.mediaEmbed,
    required this.thumbnailWidth,
    this.authorFlairTemplateId,
    required this.isOriginalContent,
    required this.userReports,
    this.secureMedia,
    required this.isRedditMediaDomain,
    required this.isMeta,
    this.category,
    required this.secureMediaEmbed,
    this.linkFlairText,
    required this.canModPost,
    required this.score,
    this.approvedBy,
    required this.isCreatedFromAdsUi,
    required this.authorPremium,
    required this.thumbnail,
    required this.edited,
    this.authorFlairCssClass,
    required this.authorFlairRichtext,
    required this.postHint,
    required this.contentCategories,
    required this.isSelf,
    this.modNote,
    required this.created,
    required this.linkFlairType,
    required this.wls,
    this.removedByCategory,
    this.bannedBy,
    required this.authorFlairType,
    required this.domain,
    required this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    required this.urlOverriddenByDest,
    this.viewCount,
    required this.archived,
    required this.noFollow,
    required this.isCrosspostable,
    required this.pinned,
    required this.over18,
    required this.allAwardings,
    required this.awarders,
    required this.mediaOnly,
    required this.canGild,
    required this.spoiler,
    required this.locked,
    this.authorFlairText,
    required this.treatmentTags,
    required this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    required this.subredditId,
    required this.authorIsBlocked,
    this.modReasonBy,
    this.removalReason,
    required this.id,
    required this.isRobotIndexable,
    this.reportReasons,
    required this.author,
    this.discussionType,
    required this.numComments,
    required this.sendReplies,
    required this.whitelistStatus,
    required this.contestMode,
    required this.modReports,
    required this.authorPatreonFlair,
    this.authorFlairTextColor,
    required this.permalink,
    required this.parentWhitelistStatus,
    required this.stickied,
    required this.url,
    required this.subredditSubscribers,
    required this.createdUtc,
    required this.numCrossposts,
    this.media,
    required this.isVideo,
  });

  final dynamic approvedAtUtc;
  final String subreddit;
  final String selftext;
  final String authorFullname;
  final bool saved;
  final dynamic modReasonTitle;
  final int gilded;
  final bool clicked;
  final String title;
  final List<dynamic> linkFlairRichtext;
  final String subredditNamePrefixed;
  final bool hidden;
  final int pwls;
  final dynamic linkFlairCssClass;
  final int downs;
  final int thumbnailHeight;
  final dynamic topAwardedType;
  final bool hideScore;
  final String name;
  final bool quarantine;

  final double upvoteRatio;
  final dynamic authorFlairBackgroundColor;
  final String subredditType;
  final int ups;
  final int totalAwardsReceived;
  final MediaEmbed mediaEmbed;
  final int thumbnailWidth;
  final dynamic authorFlairTemplateId;
  final bool isOriginalContent;
  final List<dynamic> userReports;
  final dynamic secureMedia;
  final bool isRedditMediaDomain;
  final bool isMeta;
  final dynamic category;
  final MediaEmbed secureMediaEmbed;
  final dynamic linkFlairText;
  final bool canModPost;
  final int score;
  final dynamic approvedBy;
  final bool isCreatedFromAdsUi;
  final bool authorPremium;
  final String thumbnail;
  final bool edited;
  final dynamic authorFlairCssClass;
  final List<dynamic> authorFlairRichtext;

  final String? postHint;
  final List<String> contentCategories;
  final bool isSelf;
  final dynamic modNote;
  final double created;
  final String linkFlairType;
  final int wls;
  final dynamic removedByCategory;
  final dynamic bannedBy;
  final String authorFlairType;
  final String domain;
  final bool allowLiveComments;
  final dynamic selftextHtml;
  final dynamic likes;
  final dynamic suggestedSort;
  final dynamic bannedAtUtc;
  final String urlOverriddenByDest;
  final dynamic viewCount;
  final bool archived;
  final bool noFollow;
  final bool isCrosspostable;
  final bool pinned;
  final bool over18;

  final List<AllAwarding> allAwardings;
  final List<dynamic> awarders;
  final bool mediaOnly;
  final bool canGild;
  final bool spoiler;
  final bool locked;
  final dynamic authorFlairText;
  final List<dynamic> treatmentTags;
  final bool visited;
  final dynamic removedBy;
  final dynamic numReports;
  final dynamic distinguished;
  final String subredditId;
  final bool authorIsBlocked;
  final dynamic modReasonBy;
  final dynamic removalReason;

  final String id;
  final bool isRobotIndexable;
  final dynamic reportReasons;
  final String author;
  final dynamic discussionType;
  final int numComments;
  final bool sendReplies;
  final String whitelistStatus;
  final bool contestMode;
  final List<dynamic> modReports;
  final bool authorPatreonFlair;
  final dynamic authorFlairTextColor;
  final String permalink;
  final String parentWhitelistStatus;
  final bool stickied;
  final String url;
  final int subredditSubscribers;
  final double createdUtc;
  final int numCrossposts;
  final dynamic media;
  final bool isVideo;

  factory Subreddit.fromJson(Map<String, dynamic> json) => Subreddit(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: json["subreddit"],
        selftext: json["selftext"],
        authorFullname: json["author_fullname"],
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext:
            List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
        subredditNamePrefixed: json["subreddit_name_prefixed"],
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"],
        thumbnailHeight: json["thumbnail_height"],
        topAwardedType: json["top_awarded_type"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        upvoteRatio: json["upvote_ratio"]?.toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: json["subreddit_type"],
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: MediaEmbed.fromJson(json["media_embed"]),
        thumbnailWidth: json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        secureMedia: json["secure_media"],
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: MediaEmbed.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        isCreatedFromAdsUi: json["is_created_from_ads_ui"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext:
            List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        postHint: json["post_hint"],
        contentCategories:
            List<String>.from(json["content_categories"].map((x) => x)),
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: json["created"],
        linkFlairType: json["link_flair_type"],
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: json["author_flair_type"],
        domain: json["domain"],
        allowLiveComments: json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        urlOverriddenByDest: json["url_overridden_by_dest"],
        viewCount: json["view_count"],
        archived: json["archived"],
        noFollow: json["no_follow"],
        isCrosspostable: json["is_crosspostable"],
        pinned: json["pinned"],
        over18: json["over_18"],
        allAwardings: List<AllAwarding>.from(
            json["all_awardings"].map((x) => AllAwarding.fromJson(x))),
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"],
        canGild: json["can_gild"],
        spoiler: json["spoiler"],
        locked: json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: json["subreddit_id"],
        authorIsBlocked: json["author_is_blocked"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        // linkFlairBackgroundColor: json["link_flair_background_color"],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        whitelistStatus: json["whitelist_status"],
        contestMode: json["contest_mode"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"],
        parentWhitelistStatus: json["parent_whitelist_status"],
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: json["created_utc"],
        numCrossposts: json["num_crossposts"],
        media: json["media"],
        isVideo: json["is_video"],
      );

  Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subreddit,
        "selftext": selftext,
        "author_fullname": authorFullname,
        "saved": saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "clicked": clicked,
        "title": title,
        "link_flair_richtext":
            List<dynamic>.from(linkFlairRichtext.map((x) => x)),
        "subreddit_name_prefixed": subredditNamePrefixed,
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs,
        "thumbnail_height": thumbnailHeight,
        "top_awarded_type": topAwardedType,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "upvote_ratio": upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditType,
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed.toJson(),
        "thumbnail_width": thumbnailWidth,
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "secure_media": secureMedia,
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed.toJson(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "is_created_from_ads_ui": isCreatedFromAdsUi,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext":
            List<dynamic>.from(authorFlairRichtext.map((x) => x)),
        "post_hint": postHint,
        "content_categories":
            List<dynamic>.from(contentCategories.map((x) => x)),
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created,
        "link_flair_type": linkFlairType,
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairType,
        "domain": domain,
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "url_overridden_by_dest": urlOverriddenByDest,
        "view_count": viewCount,
        "archived": archived,
        "no_follow": noFollow,
        "is_crosspostable": isCrosspostable,
        "pinned": pinned,
        "over_18": over18,
        "all_awardings":
            List<dynamic>.from(allAwardings.map((x) => x.toJson())),
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly,
        "can_gild": canGild,
        "spoiler": spoiler,
        "locked": locked,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditId,
        "author_is_blocked": authorIsBlocked,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "whitelist_status": whitelistStatus,
        "contest_mode": contestMode,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink,
        "parent_whitelist_status": parentWhitelistStatus,
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc,
        "num_crossposts": numCrossposts,
        "media": media,
        "is_video": isVideo,
      };
}

class AllAwarding {
  AllAwarding({
    this.giverCoinReward,
    this.subredditId,
    required this.isNew,
    this.daysOfDripExtension,
    required this.coinPrice,
    required this.id,
    this.pennyDonate,
    required this.awardSubType,
    required this.coinReward,
    required this.iconUrl,
    this.daysOfPremium,
    this.tiersByRequiredAwardings,
    required this.resizedIcons,
    required this.iconWidth,
    required this.staticIconWidth,
    this.startDate,
    required this.isEnabled,
    this.awardingsRequiredToGrantBenefits,
    required this.description,
    this.endDate,
    this.stickyDurationSeconds,
    required this.subredditCoinReward,
    required this.count,
    required this.staticIconHeight,
    required this.name,
    required this.resizedStaticIcons,
    this.iconFormat,
    required this.iconHeight,
    this.pennyPrice,
    required this.awardType,
    required this.staticIconUrl,
  });

  final dynamic giverCoinReward;
  final dynamic subredditId;
  final bool isNew;
  final int? daysOfDripExtension;
  final int coinPrice;
  final String id;
  final dynamic pennyDonate;
  final String awardSubType;
  final int coinReward;
  final String iconUrl;
  final int? daysOfPremium;
  final dynamic tiersByRequiredAwardings;
  final List<ResizedIcon> resizedIcons;
  final int iconWidth;
  final int staticIconWidth;
  final dynamic startDate;
  final bool isEnabled;
  final dynamic awardingsRequiredToGrantBenefits;
  final String description;
  final dynamic endDate;
  final dynamic stickyDurationSeconds;
  final int subredditCoinReward;
  final int count;
  final int staticIconHeight;
  final String name;
  final List<ResizedIcon> resizedStaticIcons;
  final String? iconFormat;
  final int iconHeight;
  final int? pennyPrice;
  final String awardType;
  final String staticIconUrl;

  factory AllAwarding.fromJson(Map<String, dynamic> json) => AllAwarding(
        giverCoinReward: json["giver_coin_reward"],
        subredditId: json["subreddit_id"],
        isNew: json["is_new"],
        daysOfDripExtension: json["days_of_drip_extension"],
        coinPrice: json["coin_price"],
        id: json["id"],
        pennyDonate: json["penny_donate"],
        awardSubType: json["award_sub_type"],
        coinReward: json["coin_reward"],
        iconUrl: json["icon_url"],
        daysOfPremium: json["days_of_premium"],
        tiersByRequiredAwardings: json["tiers_by_required_awardings"],
        resizedIcons: List<ResizedIcon>.from(
            json["resized_icons"].map((x) => ResizedIcon.fromJson(x))),
        iconWidth: json["icon_width"],
        staticIconWidth: json["static_icon_width"],
        startDate: json["start_date"],
        isEnabled: json["is_enabled"],
        awardingsRequiredToGrantBenefits:
            json["awardings_required_to_grant_benefits"],
        description: json["description"],
        endDate: json["end_date"],
        stickyDurationSeconds: json["sticky_duration_seconds"],
        subredditCoinReward: json["subreddit_coin_reward"],
        count: json["count"],
        staticIconHeight: json["static_icon_height"],
        name: json["name"],
        resizedStaticIcons: List<ResizedIcon>.from(
            json["resized_static_icons"].map((x) => ResizedIcon.fromJson(x))),
        iconFormat: json["icon_format"],
        iconHeight: json["icon_height"],
        pennyPrice: json["penny_price"],
        awardType: json["award_type"],
        staticIconUrl: json["static_icon_url"],
      );

  Map<String, dynamic> toJson() => {
        "giver_coin_reward": giverCoinReward,
        "subreddit_id": subredditId,
        "is_new": isNew,
        "days_of_drip_extension": daysOfDripExtension,
        "coin_price": coinPrice,
        "id": id,
        "penny_donate": pennyDonate,
        "award_sub_type": awardSubType,
        "coin_reward": coinReward,
        "icon_url": iconUrl,
        "days_of_premium": daysOfPremium,
        "tiers_by_required_awardings": tiersByRequiredAwardings,
        "resized_icons":
            List<dynamic>.from(resizedIcons.map((x) => x.toJson())),
        "icon_width": iconWidth,
        "static_icon_width": staticIconWidth,
        "start_date": startDate,
        "is_enabled": isEnabled,
        "awardings_required_to_grant_benefits":
            awardingsRequiredToGrantBenefits,
        "description": description,
        "end_date": endDate,
        "sticky_duration_seconds": stickyDurationSeconds,
        "subreddit_coin_reward": subredditCoinReward,
        "count": count,
        "static_icon_height": staticIconHeight,
        "name": name,
        "resized_static_icons":
            List<dynamic>.from(resizedStaticIcons.map((x) => x.toJson())),
        "icon_format": iconFormat,
        "icon_height": iconHeight,
        "penny_price": pennyPrice,
        "award_type": awardType,
        "static_icon_url": staticIconUrl,
      };
}

class ResizedIcon {
  ResizedIcon({
    required this.url,
    required this.width,
    required this.height,
  });

  final String url;
  final int width;
  final int height;

  factory ResizedIcon.fromJson(Map<String, dynamic> json) => ResizedIcon(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

class MediaEmbed {
  MediaEmbed();

  factory MediaEmbed.fromJson(Map<String, dynamic> json) => MediaEmbed();

  Map<String, dynamic> toJson() => {};
}

class Preview {
  Preview({
    required this.images,
    required this.enabled,
  });

  final List<Image> images;
  final bool enabled;

  factory Preview.fromJson(Map<String, dynamic> json) => Preview(
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "enabled": enabled,
      };
}

class Image {
  Image({
    required this.source,
    required this.resolutions,
    required this.variants,
    required this.id,
  });

  final ResizedIcon source;
  final List<ResizedIcon> resolutions;
  final MediaEmbed variants;
  final String id;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        source: ResizedIcon.fromJson(json["source"]),
        resolutions: List<ResizedIcon>.from(
            json["resolutions"].map((x) => ResizedIcon.fromJson(x))),
        variants: MediaEmbed.fromJson(json["variants"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "source": source.toJson(),
        "resolutions": List<dynamic>.from(resolutions.map((x) => x.toJson())),
        "variants": variants.toJson(),
        "id": id,
      };
}
