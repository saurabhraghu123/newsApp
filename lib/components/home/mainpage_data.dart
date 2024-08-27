class HomepageModel {
  Homepage homepage;

  HomepageModel({
    required this.homepage,
  });

  factory HomepageModel.fromJson(Map<String, dynamic> json) => HomepageModel(
        homepage: Homepage.fromJson(json["homepage"]),
      );

  Map<String, dynamic> toJson() => {
        "homepage": homepage.toJson(),
      };
}

class Homepage {
  List<String> banner;
  List<Category> categories;
  List<Notification> notifications;
  List<String> insights;
  List<String> topics;
  List<Notification> othernotifications;
  List<String> polls;

  Homepage({
    required this.banner,
    required this.categories,
    required this.notifications,
    required this.insights,
    required this.topics,
    required this.othernotifications,
    required this.polls,
  });

  factory Homepage.fromJson(Map<String, dynamic> json) => Homepage(
        banner: List<String>.from(json["banner"].map((x) => x)),
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        notifications: List<Notification>.from(
            json["notifications"].map((x) => Notification.fromJson(x))),
        insights: List<String>.from(json["insights"].map((x) => x)),
        topics: List<String>.from(json["topics"].map((x) => x)),
        othernotifications: List<Notification>.from(
            json["othernotifications"].map((x) => Notification.fromJson(x))),
        polls: List<String>.from(json["polls"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "banner": List<dynamic>.from(banner.map((x) => x)),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "notifications":
            List<dynamic>.from(notifications.map((x) => x.toJson())),
        "insights": List<dynamic>.from(insights.map((x) => x)),
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "othernotifications":
            List<dynamic>.from(othernotifications.map((x) => x.toJson())),
        "polls": List<dynamic>.from(polls.map((x) => x)),
      };
}

class Category {
  String imageuRl;
  String heading;

  Category({
    required this.imageuRl,
    required this.heading,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        imageuRl: json["imageuRL"],
        heading: json["heading"],
      );

  Map<String, dynamic> toJson() => {
        "imageuRL": imageuRl,
        "heading": heading,
      };
}

class Notification {
  String imageuRl;
  String text;

  Notification({
    required this.imageuRl,
    required this.text,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        imageuRl: json["imageuRL"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "imageuRL": imageuRl,
        "text": text,
      };
}
