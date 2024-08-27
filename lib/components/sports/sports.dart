import 'package:flutter/material.dart';

class Sports extends StatefulWidget {
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  List<Widget> list = <Widget>[
    Image.network(
      'https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_480/lsci/db/PICTURES/CMS/380500/380553.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_480/lsci/db/PICTURES/CMS/380500/380581.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://c.ndtvimg.com/2021-04/1lrriqc8_ms-dhoni-bcciipl_625x300_20_April_21.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://media.assettype.com/freepressjournal/2024-03/baf06b28-b206-42be-81c8-f38ee750d75e/FuC7QTZaMAQVR9V.jpg',
      fit: BoxFit.cover,
    ),
    // Add other images here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 252, 251, 251),
      appBar: AppBar(
        title: Text("Sports News"),
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
