// import 'dart:convert';

// import 'package:ecoharmony/components/models/model.dart';
// import 'package:ecoharmony/components/politics/politics_data.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// class PoliticsController extends GetxController {
//   NewslistModel? newsModel;
//   List<NewsModel> politics = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewslistModel.fromJson(data);
//     politics = newsModel?.newsList ?? [];
//     update();
//   }
// }
