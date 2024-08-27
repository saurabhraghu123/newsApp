// import 'package:ecoharmony/components/models/model.dart';

// class NewslistModel {
//   List<NewsModel>? newsList;

//   NewslistModel({required this.newsList});

//   factory NewslistModel.fromJson(Map<String, dynamic> json) => NewslistModel(
//         newsList: json["all_news"] == null ? [] : List<NewsModel>.from(json["all_news"]!.map((x) => NewsModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "all_news": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
//       };
// }

