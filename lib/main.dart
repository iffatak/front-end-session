import 'package:flutter/material.dart';
import 'package:test_app/screens/HomeScreen.dart';
import 'package:test_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xFF232D5C),
          scaffoldBackgroundColor: Color(0xFF232D5C),
          backgroundColor: Color(0xFF232D5C),
          focusColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
