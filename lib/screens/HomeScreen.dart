import 'package:flutter/material.dart';
import 'package:test_app/components/IconCard.dart';
import 'package:test_app/components/MainCard.dart';

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
        child: Expanded(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: MainCard(),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 28, left: MediaQuery.of(context).size.width * 0.1),
                child: Expanded(
                  child: Row(
                    children: const [
                      IconCard(
                        icon: 'assets/icons/notification.png',
                      ),
                      SizedBox(width: 24),
                      IconCard(
                        icon: 'assets/icons/down.png',
                      ),
                      SizedBox(width: 24),
                      IconCard(
                        icon: 'assets/icons/scan.png',
                      ),
                      SizedBox(width: 24),
                      IconCard(
                        icon: 'assets/icons/time.png',
                      ),
                      SizedBox(width: 24),
                      IconCard(
                        icon: 'assets/icons/setting.png',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
