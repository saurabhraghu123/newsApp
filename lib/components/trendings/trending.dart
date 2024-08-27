

// import 'package:card_swiper/card_swiper.dart';
// import 'package:ecoharmony/components/trendings/trending_controller.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// class Treanding extends StatefulWidget {
//   @override
//   _TreandingState createState() => _TreandingState();
// }

// class _TreandingState extends State<Treanding> {
//   final TreandingController controller0 = Get.put(TreandingController());

//   @override
//   void initState() {
//     super.initState();
//     Get.find<TreandingController>().readJson();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<TreandingController>(builder: (controller) {
//       return Scaffold(
//         backgroundColor: Color.fromARGB(248, 97, 94, 94),
//         appBar: AppBar(
//           title: const Text('Treandings'),
//           backgroundColor: const Color.fromARGB(255, 76, 150, 175),
//         ),
//         body: Swiper(
//           itemCount: controller.trendings.length,
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
//                         child: Image.network(controller.trendings[index].imageuRL, fit: BoxFit.cover, height: 300, width: 450),
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
//                       controller.trendings[index].heading,
//                       textAlign: TextAlign.left,
//                       style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
//                     child: Text(controller.trendings[index].description, style: const TextStyle(fontSize: 18)),
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
