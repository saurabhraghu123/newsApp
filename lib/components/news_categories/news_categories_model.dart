// class NewsModel {
//   String imageuRL;
//   String heading;
//   String description;

//   NewsModel({required this.imageuRL, required this.heading, required this.description});

//   factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
//         imageuRL: json["imageuRL"],
//         heading: json["heading"],
//         description: json["description"],
//       );

//   Map<String, dynamic> toJson() => {
//         "imageuRL": imageuRL,
//         "heading": heading,
//         "description": description,
//       };
// }

class NewsCategoryModel {
  final List<NewsCategoryData>? categories;
  final List<NewsCategoryData>? banners;

  NewsCategoryModel({this.categories, this.banners});

  factory NewsCategoryModel.fromJson(Map<String, dynamic> json) =>
      NewsCategoryModel(
        categories: json["home_categories"] == null
            ? []
            : List<NewsCategoryData>.from(json["home_categories"]!
                .map((x) => NewsCategoryData.fromMap(x))),
        banners: json["home_banner"] == null
            ? []
            : List<NewsCategoryData>.from(
                json["home_banner"]!.map((x) => NewsCategoryData.fromMap(x))),
      );

  Map<String, dynamic> toJson() => {
        "home_categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "home_banner": banners == null
            ? []
            : List<dynamic>.from(banners!.map((x) => x.toJson())),
      };
}

class NewsCategoryData {
  final String? name;
  final String? image;

  final List<NewsData>? news;

  NewsCategoryData({this.name, this.image, this.news});

  factory NewsCategoryData.fromMap(Map<String, dynamic> json) =>
      NewsCategoryData(
        name: json["categoriesname"] ?? '',
        image: json["categories_image"] ?? '',
        news: json["news"] == null
            ? []
            : List<NewsData>.from(
                json["news"]!.map((x) => NewsData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categoriesname": name,
        "categories_image": image,
        "news": news == null
            ? []
            : List<dynamic>.from(news!.map((x) => x.toJson())),
      };
}

class NewsData {
  final String? imageuRl;
  final String? heading;
  final String? description;

  NewsData({this.imageuRl, this.heading, this.description});

  factory NewsData.fromJson(Map<String, dynamic> json) => NewsData(
        imageuRl: json["imageuRL"],
        heading: json["heading"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "imageuRL": imageuRl,
        "heading": heading,
        "description": description,
      };
}
