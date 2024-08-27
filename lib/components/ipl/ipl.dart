import 'package:flutter/material.dart';

class Iplmatch extends StatefulWidget {
  @override
  _IplmatchState createState() => _IplmatchState();
}

class _IplmatchState extends State<Iplmatch> {
  List<Widget> list = <Widget>[
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/10/600x338/PTI03-06-2024-000143B-0_1715331742839_1715331760291.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/10/600x338/KKR_vs_MI_2024_1715316249646_1715316256889.png',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/10/600x338/GNJ8FfOXEAAXbZd_1715311895282_1715311910543.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://media.assettype.com/freepressjournal/2024-03/baf06b28-b206-42be-81c8-f38ee750d75e/FuC7QTZaMAQVR9V.jpg',
      fit: BoxFit.cover,
    ),
     Image.network(
      'https://drop.ndtv.com/albums/SPORTS/punjab-kings-th_638502559779920340/638502559818559162.jpeg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/10/600x338/KKR_vs_MI_2024_1715316249646_1715316256889.png',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/09/600x338/KL_Rahul_1715262989294_1715262989511.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/10/600x338/CRICKET-IND-IPL-T20-PUNJAB-BENGALURU-3_1715302774582_1715302790047.jpg',
      fit: BoxFit.cover,
    ),
    // Add other images here
    // Add other images here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 252, 251, 251),
      appBar: AppBar(
        title: Text("IPL@2024 News"),
        backgroundColor: Color.fromARGB(255, 76, 150, 175),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10, // Adjust as needed
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      list[index],
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'jammukasmir:  Lorum ipsum is the traditional Latin placeholder text, used when a designer needs a chunk of text for dummying up a layout. Journo Ipsum is like that, only using some of the most common catchphrases, buzzwords, and bon mots of the future-of-news crowd. Hit reload for a new batch. For entertainment purposes only. (More here.)',
                          style: TextStyle(fontSize: 16),
                          maxLines: 3, 
                          overflow: TextOverflow.ellipsis, 
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
