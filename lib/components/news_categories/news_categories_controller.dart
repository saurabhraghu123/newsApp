import 'dart:convert';

import 'package:ecoharmony/components/news_categories/news_categories_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NewsCategoriesController extends GetxController {
  //get newsCategories => null;
  List<NewsCategoryData> newsCategories = [];
  List<NewsCategoryData> newsBanners = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/news_categories_data.json');
    final data = await json.decode(response);
    final allNews = NewsCategoryModel.fromJson(data);
    newsBanners = allNews.banners ?? [];
    newsCategories = allNews.categories ?? [];
    update();
  }
}
