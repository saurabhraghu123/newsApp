// import 'package:ecoharmony/components/models/model.dart';

// class NewspagelistModel {
//   List<NewsModel>? newsList;

//   NewspagelistModel({required this.newsList});

//   factory NewspagelistModel.fromJson(Map<String, dynamic> json) => NewspagelistModel(
//         newsList: json["discover"] == null ? [] : List<NewsModel>.from(json["discover"]!.map((x) => NewsModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "discover": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
//       };
// }