// import 'dart:convert';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:ecoharmony/components/trendings/trendings_data.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// class TreandingController extends GetxController {
//   NewsTrendingslistModel? newsModel;
//   List<NewsModel> trendings = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewsTrendingslistModel.fromJson(data);
//     trendings = newsModel?.newsList ?? [];
//     update();
//   }
// }
