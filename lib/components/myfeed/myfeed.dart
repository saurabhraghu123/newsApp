// import 'dart:convert';

// import 'package:ecoharmony/components/all_news/news.dart';
// import 'package:ecoharmony/components/bookmarks/bookmarks.dart';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:ecoharmony/components/trendings/trending.dart';
// import 'package:flutter/material.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/services.dart';

// class My_Feed extends StatefulWidget {
//   @override
//   _My_FeedState createState() => _My_FeedState();
// }

// class _My_FeedState extends State<My_Feed> {
//   NewslistModel? newsModel;
//   List<NewsModel> my_feed = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewslistModel.fromJson(data);
//     my_feed = newsModel?.newsList ?? [];
//     setState(() {});
//   }

//   @override
//   void initState() {
//     super.initState();
//     readJson();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(249, 72, 66, 66),
//       appBar: AppBar(
//         title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             InkWell(child: Container(child: Text('All-News')),
//             onTap: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
//             },
//             ),
//             InkWell(child: Container(child: Text('Trendings')),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Treanding()));
//             },
//             ),
//             InkWell(child: Container(child: Text('Bookmarks')),
//             onTap: (){
//                Navigator.push(context, MaterialPageRoute(builder: (context) => Bookmarks()));
//             },
//             ),
           
//           ],
//         ),
//         backgroundColor: const Color.fromARGB(255, 76, 150, 175),
//       ),
//       body: Swiper(
//         itemCount: my_feed.length,
//         layout: SwiperLayout.STACK,
//         scrollDirection: Axis.vertical,
//         itemWidth: MediaQuery.of(context).size.width,
//         itemHeight: MediaQuery.of(context).size.height,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             decoration: const BoxDecoration(color: Color.fromARGB(255, 254, 254, 254)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Stack(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 12),
//                       child: Image.network(my_feed[index].imageuRL, fit: BoxFit.cover, height: 300, width: 450),
//                     ),
//                     Positioned(
//                       left: 10,
//                       bottom: 0,
//                       child: Card(
//                         child: Container(
//                           width: 70,
//                           decoration: BoxDecoration(color: const Color.fromARGB(255, 246, 246, 244), borderRadius: BorderRadius.circular(25)),
//                           child: const Center(
//                             child: Text(
//                               'inShorts',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     left: 10,
//                     right: 10,
//                   ),
//                   child: Text(
//                     maxLines: 2,
//                     my_feed[index].heading,
//                     textAlign: TextAlign.left,
//                     style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                   child: Text(my_feed[index].description, style: const TextStyle(fontSize: 18)),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// ///////////////////////////////////////
// // make model for our screen page.....1


// class NewslistModel {
//   List<NewsModel>? newsList;

//   NewslistModel({required this.newsList});

//   factory NewslistModel.fromJson(Map<String, dynamic> json) => NewslistModel(
//         newsList: json["my_feed"] == null ? [] : List<NewsModel>.from(json["my_feed"]!.map((x) => NewsModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "my_feed": newsList == null ? [] : List<dynamic>.from(newsList!.map((x) => x.toJson())),
//       };
// }

