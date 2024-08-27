
// import 'package:ecoharmony/components/models/model.dart';

// class NewsBookmarkslistModel {
//   List<NewsModel>? newsList;

//   NewsBookmarkslistModel({required this.newsList});

//   factory NewsBookmarkslistModel.fromJson(Map<String, dynamic> json) => NewsBookmarkslistModel(
//         newsList: json["bookmarks"] == null ? [] : List<NewsModel>.from(json["bookmarks"]!.map((x) => NewsModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "bookmarks": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
//       };
// }