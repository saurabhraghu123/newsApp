// import 'dart:convert';
// import 'package:ecoharmony/components/discover/discover_data.dart';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// class DiscoverController extends GetxController {
//   NewsDiscoverlistModel? newsModel;
//   List<NewsModel> discover = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewsDiscoverlistModel.fromJson(data);
//     discover = newsModel?.newsList ?? [];
//     update();
//   }
// }
