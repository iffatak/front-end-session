import 'package:flutter/material.dart';
import 'package:test_app/helpers/imageHelpers.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key, required this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(0.2)),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
