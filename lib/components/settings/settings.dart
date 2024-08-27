import 'package:ecoharmony/components/signpage/signwith.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var other = [
      Otherdata(leading: 'share this app'),
      Otherdata(leading: 'Rate this app'),
      Otherdata(leading: 'Feedback'),
      Otherdata(leading: 'Term & conditions'),
      Otherdata(leading: 'Privacy'),
    ];

    ///second list..

    var dataList = [
      Users(
        leading: 'Auto Start',
        trailing: 'Please enable to recieve notifications',
      ),
      Users(
        icon: Icons.add_chart_rounded,
        leading: 'Language',
        trailing: '',
      ),
      Users(
        icon: Icons.notification_add,
        leading: 'Notifications',
        trailing: '',
      ),
      Users(
        icon: Icons.access_alarm,
        leading: 'Change Relevancy',
        trailing: '',
      ),
      Users(
        icon: Icons.image_rounded,
        leading: 'HD Images',
        trailing: '',
      ),
      Users(
        icon: Icons.mode_night_sharp,
        leading: 'Night Mode',
        trailing: '',
      ),
      Users(
        icon: Icons.play_circle_fill_rounded,
        leading: 'Autoplay',
        trailing: '',
      ),
      Users(
        icon: Icons.text_format_sharp,
        leading: 'Text size',
        trailing: '',
      ),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Options'),
          backgroundColor: Color.fromRGBO(242, 245, 242, 1),
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              color: Color.fromARGB(253, 0, 161, 254),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Save Your Preferences',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Sign in to save your Likes and\nBookmarks',
                            style: TextStyle(color: Color(0xFFFCFBFB)),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      child: Container(
                                          width: 70,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(243, 244, 244, 1),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'SignIn',
                                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromRGBO(240, 18, 18, 0.805)),
                                            ),
                                          )),
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => SinginWith()));
                                      },
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => SinginWith()));
                                            },
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvTqClLNAxXnsGRtkeFW89nS7fwIG7a42xKj49UfDdzA&s'),
                                              backgroundColor: Colors.transparent,
                                              radius: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => SinginWith()));
                                            },
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage('https://blog.hubspot.com/hubfs/image8-2.jpg'),
                                              backgroundColor: Colors.transparent,
                                              radius: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => SinginWith()));
                                            },
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage('https://i.pinimg.com/736x/6c/78/49/6c784972cbf5806215d46fbda8b0c46a.jpg'),
                                              backgroundColor: Colors.transparent,
                                              radius: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => SinginWith()));
                                            },
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQJ2TXiDDv2ZxvRT680QTcrePU42XgnYFMEmtU6-lRPA&s'),
                                              backgroundColor: Colors.transparent,
                                              radius: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              // itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dataList[index].leading),
                  subtitle: Text(dataList[index].trailing),
                  leading: Icon(
                    dataList[index].icon,
                  ),
                  onTap: () {
                    if (index == 0) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => TopStories()));
                    }
                    if (index == 1) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                    }
                    if (index == 2) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Bookmarks()));
                    }
                    if (index == 3) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => TopStories()));
                    }
                    if (index == 4) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                    }
                    if (index == 5) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => _toggleDarkMode()));
                    }
                    if (index == 6) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => TopStories()));
                    }
                    if (index == 7) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => News()));
                    }
                  },
                );
              },
              itemCount: dataList.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 40,
                  thickness: 0.1,
                  color: Color.fromARGB(255, 81, 81, 81),
                );
              },
            ),
//////////////////////////////
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: other.length,
              itemBuilder: (context, index2) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: Color.fromARGB(19, 151, 150, 150),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(other[index2].leading),
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        )),
      ),
    );
  }
}

class Users {
  String leading;
  String trailing;
  IconData? icon;

  Users({required this.leading, required this.trailing, this.icon});
}

class Otherdata {
  String leading;
  Otherdata({required this.leading});
}
