// import 'package:ecoharmony/components/top_stories/topstories_controller.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

// class TopStories extends StatefulWidget {
//   @override
//   _TopStoriesState createState() => _TopStoriesState();
// }

// class _TopStoriesState extends State<TopStories> {
//   final TopStoriesController controller0 = Get.put(TopStoriesController());

//   @override
//   void initState() {
//     super.initState();
//     Get.find<TopStoriesController>().readJson();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<TopStoriesController>(builder: (controller) {
//       return Scaffold(
//         backgroundColor: const Color.fromARGB(249, 72, 66, 66),
//         appBar: AppBar(
//           title: const Text('Top-stories'),
//           backgroundColor: const Color.fromARGB(255, 76, 150, 175),
//         ),
//         body: Swiper(
//           itemCount: controller.topStories.length,
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
//                         child: Image.network(controller.topStories[index].imageuRL, fit: BoxFit.cover, height: 300, width: 450),
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
//                       controller.topStories[index].heading,
//                       textAlign: TextAlign.left,
//                       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                     child: Text(controller.topStories[index].description, style: const TextStyle(fontSize: 18)),
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
