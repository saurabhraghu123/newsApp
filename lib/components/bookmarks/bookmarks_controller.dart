// import 'dart:convert';
// import 'package:ecoharmony/components/bookmarks/bookmarks_dart.dart';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// class DiscoverController extends GetxController {
//   NewsBookmarkslistModel? newsModel;
//   List<NewsModel> bookmarks = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewsBookmarkslistModel.fromJson(data);
//     bookmarks = newsModel?.newsList ?? [];
//     update();
//   }
// }
