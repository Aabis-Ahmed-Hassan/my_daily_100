import 'package:flutter/material.dart';
import 'package:my_daily_100/screens/reset_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ResetPassword());
  }
}
