import 'package:flutter/material.dart';
import 'package:test_app/screens/HomeScreen.dart';
import 'package:test_app/theme.dart';
import 'package:test_app/helpers/imageHelpers.dart';
import 'package:test_app/theme/themeHelpers.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1B2237),
        body: Center(),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 80,
            decoration: backgroundGradient,
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 10,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedIconTheme: IconThemeData(),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: icon('home'), label: 'Home'),
                BottomNavigationBarItem(
                    icon: icon('combine'), label: 'Combine'),
                BottomNavigationBarItem(icon: icon('wallet'), label: 'Wallet'),
                BottomNavigationBarItem(icon: icon('chart'), label: 'Combine'),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Color(0xFF4A5268),
                    ),
                    label: 'Combine'),
              ],
            ),
          ),
        ));
  }

  icon(String name) {
    return Image.asset(
      getIconImage(name),
      height: 24,
      width: 24,
      color: const Color(0xFF4A5268),
    );
  }
}
