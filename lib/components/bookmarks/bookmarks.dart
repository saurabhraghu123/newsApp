// import 'dart:convert';
// import 'package:ecoharmony/components/bookmarks/bookmarks_dart.dart';
// import 'package:ecoharmony/components/models/model.dart';
// import 'package:flutter/material.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/services.dart';

// class Bookmarks extends StatefulWidget {
//   @override
//   _BookmarksState createState() => _BookmarksState();
// }

// class _BookmarksState extends State<Bookmarks> {
//   NewsBookmarkslistModel? newsModel;
//   List<NewsModel> bookmarks = [];

//   Future<void> readJson() async {
//     final String response = await rootBundle.loadString('assets/newslist.json');
//     final data = await json.decode(response);
//     newsModel = NewsBookmarkslistModel.fromJson(data);
//     bookmarks = newsModel?.newsList ?? [];
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
//         title: Container(child: Text('Bookmarks')),
//         backgroundColor: const Color.fromARGB(255, 76, 150, 175),
//       ),
//       body: Swiper(
//         itemCount: bookmarks.length,
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
//                       child: Image.network(bookmarks[index].imageuRL, fit: BoxFit.cover, height: 300, width: 450),
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
//                     bookmarks[index].heading,
//                     textAlign: TextAlign.left,
//                     style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                   child: Text(bookmarks[index].description, style: const TextStyle(fontSize: 18)),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }




