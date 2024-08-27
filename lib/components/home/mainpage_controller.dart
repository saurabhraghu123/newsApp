import 'dart:async';
import 'dart:convert';
import 'package:ecoharmony/components/home/mainpage_data.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SearchbarController extends GetxController {
  HomepageModel? homeData;
  // List<NewsCategoryData> newsBanners = [];

  // fetchData() async {
  //   final ref = FirebaseDatabase.instance.ref();
  //   final snapshot = await ref.child('home_banner/').get();
  //   if (snapshot.exists) {
  //     print(snapshot.value);
  //   } else {
  //     print('No data available.');
  //   }

  // var value = FirebaseDatabase.instance.ref();
  // var getValue = await value.child('home_banner').once();
  // return getValue;

// void fetchDataFromAPI() async {
//   final url = Uri.parse(
//       'https://inshort-75a91-default-rtdb.firebaseio.com/home_banner');
//   try {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       print('Data: ${response.body.toString()}');
//       // final List<dynamic> data = json.decode(response.body);
//       // print('Data: $data');
//     } else {
//       print('Failed to load data: ${response.statusCode}');
//     }
//   } catch (error) {
//     print('Error fetching data: $error');
//   }
//   var databaseRef = FirebaseDatabase.instance.ref();
//   databaseRef
//       .child('home_banner')
//       .child('0')
//       .child('categoriesname')
//       .get()
//       .then((event) {
//     final map = event.value;
//     print('Data: $map');
//     update();
//   });
// }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/homepage.json');
    final data = await json.decode(response);
    homeData = HomepageModel.fromJson(data);
    update();
  }
}
