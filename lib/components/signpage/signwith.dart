import 'package:ecoharmony/components/signpage/googlesignin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SinginWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            // Profile Image
            Container(
              padding: EdgeInsets.only(top: 70),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://res.cloudinary.com/gurucom/image/upload/s--QP8juNIL--/b_auto,c_lpad,h_200,w_200/v1/pimg/0/395/395121/Brain%20_New_Logo_636204073293223264_guruImgLarge_93616a87-ed04-4dc9-9353-ddfe0fa9ad5e.jpg'), // Add your profile image path here
              ),
            ),
            // Container 1
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 50),
              child: Card(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                           width: 1,
                           color: Colors.black,
                            ),
                      color: Color.fromARGB(255, 254, 254, 255),
                    ),
                    width: 80,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvTqClLNAxXnsGRtkeFW89nS7fwIG7a42xKj49UfDdzA&s',
                            width: 26,
                            height: 26,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(color: Color.fromRGBO(41, 41, 41, 1), fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            // Container 2
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 20),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                           width: 1,
                           color: Colors.black,
                            ),
                    color: Color(0xFFFFFFFF),
                  ),
                  width: 80,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Image.network(
                          'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png',
                          width: 26,
                          height: 26,
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(color: Color.fromRGBO(40, 35, 35, 1), fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginIn()));
                },
              ),
            ),
            // Container 3
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 20),
              child: Card(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                           width: 1,
                           color: Colors.black,
                            ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    width: 80,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Image.network(
                            'https://i.pinimg.com/736x/39/8c/25/398c25a4436e5b8ca72f141084cdc66e.jpg',
                            width: 26,
                            height: 26,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Sign in with Twitter',
                            style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1), fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            // Container 4
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 20),
              child: Card(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                           width: 1,
                           color: Colors.black,
                            ),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: 80,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn4.iconfinder.com/data/icons/social-media-2097/94/phone-512.png',
                            width: 26,
                            height: 26,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Sign in with Phone',
                            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            // Container 5
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 20),
              child: Card(
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                           width: 1,
                           color: Colors.black,
                            ),
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                    width: 80,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn4.iconfinder.com/data/icons/social-media-logos-6/512/112-gmail_email_mail-512.png',
                            width: 26,
                            height: 26,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Sign in with Email',
                            style: TextStyle(color: const Color.fromARGB(255, 11, 10, 10), fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
