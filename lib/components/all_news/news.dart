// import 'package:ecoharmony/components/all_news/news_controller.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

// class News extends StatefulWidget {
//   @override
//   _NewsState createState() => _NewsState();
// }

// class _NewsState extends State<News> {
//   final NewsController controller0 = Get.put(NewsController());

//   @override
//   void initState() {
//     super.initState();
//     Get.find<NewsController>().readJson();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<NewsController>(builder: (controller) {
//       return Scaffold(
//         backgroundColor: const Color.fromARGB(249, 72, 66, 66),
//         appBar: AppBar(
//           title: const Text('News'),
//           backgroundColor: const Color.fromARGB(255, 76, 150, 175),
//         ),
//         body: Swiper(
//           itemCount: controller.all_news.length,
//           layout: SwiperLayout.STACK,
//           scrollDirection: Axis.vertical,
//           itemWidth: MediaQuery.of(context).size.width,
//           itemHeight: MediaQuery.of(context).size.height,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               decoration: const BoxDecoration(color: Color.fromARGB(255, 254, 254, 254)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 12),
//                         child: Image.network(controller.all_news[index].imageuRL, fit: BoxFit.cover, height: 300, width: 450),
//                       ),
//                       Positioned(
//                         left: 10,
//                         bottom: 0,
//                         child: Card(
//                           child: Container(
//                             width: 70,
//                             decoration: BoxDecoration(color: const Color.fromARGB(255, 246, 246, 244), borderRadius: BorderRadius.circular(25)),
//                             child: const Center(
//                               child: Text(
//                                 'inShorts',
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       left: 10,
//                       right: 10,
//                     ),
//                     child: Text(
//                       maxLines: 2,
//                       controller.all_news[index].heading,
//                       textAlign: TextAlign.left,
//                       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                     child: Text(controller.all_news[index].description, style: const TextStyle(fontSize: 18)),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       );
//     });
//   }
// }
