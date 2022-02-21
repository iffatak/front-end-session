import 'package:flutter/material.dart';
import 'package:test_app/components/IconCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF232D5C),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [IconCard()],
        ),
      ),
    );
  }
}
