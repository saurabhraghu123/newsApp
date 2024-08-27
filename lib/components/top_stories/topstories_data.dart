// import 'package:ecoharmony/components/models/model.dart';

// class NewsTopStorieslistModel {
//   List<NewsModel>? newsList;

//   NewsTopStorieslistModel({required this.newsList});

//   factory NewsTopStorieslistModel.fromJson(Map<String, dynamic> json) => NewsTopStorieslistModel(
//         newsList: json["top_stories"] == null ? [] : List<NewsModel>.from(json["top_stories"]!.map((x) => NewsModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "top_stories": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
//       };
// }