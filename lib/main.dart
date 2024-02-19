import 'package:flutter/material.dart';
import 'package:my_daily_100/screens/reset_password.dart';
import 'package:my_daily_100/screens/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Abc()),
      // home: ResetPassword(),
    );
  }
}

class Abc extends StatelessWidget {
  const Abc({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
              child: Text('Sign In')),
          SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPassword(),
                  ),
                );
              },
              child: Text('Reset Password')),
        ],
      ),
    );
  }
}
