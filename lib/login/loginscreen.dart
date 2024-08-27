import 'package:ecoharmony/components/home/main_page.dart';
import 'package:ecoharmony/components/register/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://agenciescdn.notifyvisitors.com/agencies/wp-content/uploads/2021/03/8aea0c90140477fd3e2fab06f59e253d1484908237.jpg'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 310, bottom: 10),
                    child: const Text(
                      'login',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                      },
                      child: Text('SignUp', style: TextStyle(color: Color.fromRGBO(255, 40, 7, 1)))),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color.fromRGBO(255, 40, 7, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 55,
                width: 480,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Searchbar()));
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Or continue with',
                style: TextStyle(color: Color.fromRGBO(3, 178, 253, 1)),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.account_circle),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
