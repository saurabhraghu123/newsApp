import 'package:ecoharmony/components/news_categories/news_categories_model.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:widget_zoom/widget_zoom.dart';

class NewsDetailScreen extends StatefulWidget {
  final NewsCategoryData newsCategory;
  const NewsDetailScreen({super.key, required this.newsCategory});

  @override
  _NewsDetailScreenState createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 72, 66, 66),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
            Text(widget.newsCategory.name ?? ''),
            const IconButton(icon: Icon(Icons.arrow_back, color: Colors.transparent), onPressed: null)
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 76, 150, 175),
      ),
      body: Swiper(
        layout: SwiperLayout.STACK,
        scrollDirection: Axis.vertical,
        itemWidth: MediaQuery.of(context).size.width,
        itemHeight: MediaQuery.of(context).size.height,
        itemCount: widget.newsCategory.news?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(color: Color.fromARGB(255, 254, 254, 254)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Image.network(widget.newsCategory.news?[index].imageuRl ?? '', fit: BoxFit.cover, height: 300, width: 450),
                      ),
                      Positioned(
                        left: 10,
                        bottom: 0,
                        child: Card(
                          child: Container(
                            width: 70,
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 246, 246, 244), borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                              child: Text(
                                'inShorts',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Center(
                          child: Stack(children: [
                            Scaffold(
                              appBar: AppBar(
                                leading: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 58, 58, 58)),
                                ),
                              ),
                            ),
                            Center(
                              child: WidgetZoom(
                                heroAnimationTag: 'tag',
                                zoomWidget: Image.network(
                                  widget.newsCategory.news?[index].imageuRl ?? '',
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    maxLines: 2,
                    widget.newsCategory.news?[index].heading ?? '',
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(widget.newsCategory.news?[index].description ?? '', style: const TextStyle(fontSize: 18)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
