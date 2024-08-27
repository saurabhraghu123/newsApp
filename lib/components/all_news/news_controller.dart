// import 'dart:convert';

// import 'package:ecoharmony/components/all_news/allNews_data.dart';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// class NewsController extends GetxController {
//   NewslistModel? newsModel;
//   List<NewsModel> all_news = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewslistModel.fromJson(data);
//     all_news = newsModel?.newsList ?? [];
//     update();
//   }
// }
