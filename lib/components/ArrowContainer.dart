import 'package:flutter/material.dart';

class ArrowContainer extends StatelessWidget {
  const ArrowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFF090D20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_forward,
            ),
          ),
        ));
  }
}
