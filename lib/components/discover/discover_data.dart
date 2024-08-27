// import 'package:ecoharmony/components/models/model.dart';

// class NewsDiscoverlistModel {
//   List<NewsModel>? newsList;

//   NewsDiscoverlistModel({required this.newsList});

//   factory NewsDiscoverlistModel.fromJson(Map<String, dynamic> json) => NewsDiscoverlistModel(
//         newsList: json["discover"] == null ? [] : List<NewsModel>.from(json["discover"]!.map((x) => NewsModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "discover": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
//       };
// }
