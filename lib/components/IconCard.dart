import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key, this.icon}) : super(key: key);
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Image.asset(
          'icons/notification.png',
        ));
  }
}
