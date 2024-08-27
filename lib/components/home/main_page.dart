import 'package:ecoharmony/components/news_categories/news_categories_controller.dart';
import 'package:ecoharmony/components/home/mainpage_controller.dart';
import 'package:ecoharmony/components/settings/settings.dart';
import 'package:ecoharmony/components/sports/sports.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecoharmony/components/ipl/ipl.dart';
import 'package:ecoharmony/login/loginscreen.dart';
import 'package:ecoharmony/viewpage/page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Searchbar extends StatefulWidget {
  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final SearchbarController controller = Get.put(SearchbarController());
  final NewsCategoriesController newsCategoriesController = Get.put(NewsCategoriesController());
  int currentIndex = 0;

  @override
  void initState() {
    Get.find<SearchbarController>().readJson();
    //Get.find<SearchbarController>().fetchData();
    Get.find<NewsCategoriesController>().readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchbarController>(builder: (controller) {
      return GetBuilder<NewsCategoriesController>(builder: (newsCategoriesController) {
        return Card(
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: const Color.fromARGB(255, 229, 232, 232),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                      },
                    ),
                    Text('NewsInshorts'),
                    IconButton(
                      icon: const Icon(Icons.logout),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
              body: controller.homeData != null
                  ? SingleChildScrollView(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(225, 228, 220, 220),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder.none,
                                icon: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                        /////////////////////............. banner view
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: SizedBox(
                            height: 100,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: newsCategoriesController.newsBanners.length,
                              itemBuilder: (context, index) {
                                final banner = newsCategoriesController.newsBanners[index];
                                return InkWell(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    width: (MediaQuery.of(context).size.width - 36) / 2,
                                    margin: const EdgeInsets.only(right: 10.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(banner.image ?? ''), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => NewsDetailScreen(newsCategory: banner)),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        /////////// all categories of News page view..........................................
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: SizedBox(
                            height: 96,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: newsCategoriesController.newsCategories.length,
                              itemBuilder: (context, index) {
                                final category = newsCategoriesController.newsCategories[index];
                                return InkWell(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Image.network(category.image ?? '', height: 60, width: (MediaQuery.of(context).size.width - 80) / 4, fit: BoxFit.contain),
                                      ),
                                      Text(
                                        category.name ?? '',
                                        style: const TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => NewsDetailScreen(newsCategory: category)),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
//// .///////////////////////////////////////////////............third sized box for container....
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            1,
                            (index) => buildIndicator(index),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Notifications',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  'View All',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(200, 200, 20, 200)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        /////////////////////////here use listviewbuilder for showing list image and text of the list ...
                        SizedBox(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.homeData!.homepage.notifications.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return InkWell(
                                child: Card(
                                  elevation: 0.5,
                                  color: const Color.fromARGB(255, 255, 255, 255),
                                  child: ListTile(
                                    subtitle: Text(controller.homeData!.homepage.notifications[index].text),
                                    trailing: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage(controller.homeData!.homepage.notifications[index].imageuRl), fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  // if (index == 0) {
                                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => TopStories()));
                                  //   }
                                  //   if (index == 1) {
                                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                                  //   }
                                  //   if (index == 2) {
                                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Bookmarks()));
                                  //   }
                                },
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Insights',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  'View All',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(200, 200, 20, 200)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            8,
                            (index) => buildIndicator(index),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: SizedBox(
                            height: 250,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.homeData!.homepage.insights.length,
                              itemBuilder: (context, index) {
                                final insights = controller.homeData!.homepage.insights[index];
                                return InkWell(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    width: (MediaQuery.of(context).size.width - 84) / 2.5,
                                    margin: const EdgeInsets.only(right: 10.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(insights), fit: BoxFit.cover),
                                      //color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onTap: () {
                                    if (index == 0) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 1) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                    if (index == 2) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 3) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                    if (index == 4) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 5) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                    if (index == 6) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 7) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        //////////////////////////////////////below container of Insights of this page.........................
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Topics',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  'View All',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(200, 200, 20, 200)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            8,
                            (index) => buildIndicator(index),
                          ),
                        ),
////////////////////////////////////////Here  we  used carousel slider fow showing images........
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                          child: CarouselSlider(
                            items: [
                              // Image containers
                              imageContainer(context, "https://images.unsplash.com/file-1635990755334-4bfd90f37242image?dpr=2&w=416&auto=format&fit=crop&q=60"),
                              imageContainer(context, "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D"),
                              imageContainer(context, "https://images.unsplash.com/photo-1508921340878-ba53e1f016ec?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                              imageContainer(context, "https://images.unsplash.com/photo-1572949645841-094f3a9c4c94?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bmV3c3xlbnwwfHwwfHx8MA%3D%3D"),
                              imageContainer(context, "https://images.unsplash.com/photo-1546422904-90eab23c3d7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D"),
                              imageContainer(context, "https://media.istockphoto.com/id/1477858506/photo/news-online-in-phone-reading-newspaper-from-website-digital-publication-and-magazine-mockup.jpg?s=1024x1024&w=is&k=20&c=AlvYzHJjpG2COQZOj0zU1GaG_gt8CT-MnSQ236tUQvg="),
                            ],
                            options: CarouselOptions(
                              height: 100.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 4 / 4,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                              viewportFraction: 0.3,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: controller.homeData!.homepage.othernotifications.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Card(
                                    elevation: 0.5,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    child: ListTile(
                                      subtitle: Text(controller.homeData!.homepage.othernotifications[index].text),
                                      trailing: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: NetworkImage(controller.homeData!.homepage.othernotifications[index].imageuRl), fit: BoxFit.cover),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    // if (index == 0) {
                                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => TopStories()));
                                    // }
                                    // if (index == 1) {
                                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                                    // }
                                    // if (index == 2) {
                                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => Bookmarks()));
                                    // }
                                    //  if (index == 3) {
                                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                                    // }
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'VIEW MORE',
                            style: TextStyle(
                              color: Color.fromRGBO(26, 97, 238, 0.988),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Polls',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  'View All',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(200, 200, 20, 200)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            8,
                            (index) => buildIndicator(index),
                          ),
                        ),

////////polls image container...........//////////////................
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.homeData!.homepage.polls.length,
                              itemBuilder: (context, index) {
                                final polls = controller.homeData!.homepage.polls[index];
                                return InkWell(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    width: (MediaQuery.of(context).size.width) / 2,
                                    margin: const EdgeInsets.only(right: 1.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: NetworkImage(polls), fit: BoxFit.cover),
                                    ),
                                  ),
                                  onTap: () {
                                    if (index == 0) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 1) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                    if (index == 2) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 3) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                    if (index == 4) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                    if (index == 5) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Iplmatch()));
                                    }
                                    if (index == 6) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sports()));
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ]),
                    )
                  : const SizedBox(),
            ),
          ),
        );
      });
    });
  }
}

Widget imageContainer(BuildContext context, String imageUrl) {
  return InkWell(
    child: Container(
      // width: 100,
      margin: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    ),
    onTap: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    },
  );
}

//////////........ it is method for indicators..............
Widget buildIndicator(index) {
  int _currentIndex = 0;
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 0.0),
    width: 50.0,
    height: 2.0,
    decoration: BoxDecoration(
      color: _currentIndex == index ? Colors.blue : Colors.grey,
      borderRadius: BorderRadius.circular(2.0),
    ),
  );
}
