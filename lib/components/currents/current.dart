import 'package:flutter/material.dart';

class Current_news extends StatefulWidget {
  @override
  _Current_newsState createState() => _Current_newsState();
}

class _Current_newsState extends State<Current_news> {
  List<Widget> list = <Widget>[
    Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2022/05/23/16_9/16_9_6/petrol_diesel_rate_down_siam_seeks_reduction_in_cng_prices_import_duty_cut_on_raw_materials_1653303767.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2024/05/11/16_9/16_9_6/air_taxi_anand_mahindra_news_1715436975.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://www.livemint.com/lm-img/img/2024/05/10/600x338/GNJ8FfOXEAAXbZd_1715311895282_1715311910543.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2024/05/14/16_9/16_9_6/900_vehicles_stuck_in_traffic_jam_uttarakhand_chardham_yatra_route_yamunotri_gangotri__1715658300.jpeg',
      fit: BoxFit.cover,
    ),
     Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2024/05/11/16_9/16_9_6/sanjay_singh_amit_shah_1715438212.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2024/04/07/16_9/16_9_6/delhi_minister_gopal_rai__1712448129.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2024/05/10/16_9/16_9_6/maharashtra_viral_video_1715357416.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://images1.livehindustan.com/uploadimage/library/2024/05/14/16_9/16_9_6/pm_modi_arvind_kejriwal_1715659330.jpg',
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
        title: Text("Current_News"),
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
