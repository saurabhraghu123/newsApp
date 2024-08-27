// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final facebookLogin = FacebookLogin();

//   Future<void> _loginWithFacebook() async {
//     final result = await facebookLogin.logIn(['email']);
//     switch (result.status) {
//       case FacebookLoginStatus.loggedIn:
//         // You're logged in with Facebook, use result.accessToken to make API calls.
//         break;
//       case FacebookLoginStatus.cancelledByUser:
//         // User cancelled the login.
//         break;
//       case FacebookLoginStatus.error:
//         // There was an error during login.
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Facebook Login Demo'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _loginWithFacebook,
//           child: Text('Login with Facebook'),
//         ),
//       ),
//     );
//   }
// }