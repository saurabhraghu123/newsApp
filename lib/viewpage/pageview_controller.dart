// import 'dart:convert';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:ecoharmony/viewpage/pageview_data.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;

// class MyHomePageController extends GetxController {
//   NewspagelistModel? newsModel;
//   List<NewsModel> myhomepage = [];
//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewspagelistModel.fromJson(data);
//     myhomepage = newsModel?.newsList ?? [];
//     update();
//   }
// }
