import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          color: Color(0xFF3A498B),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle_outlined,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'Earn Ethereum',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0, left: 20),
            child: Row(
              children: [
                Text(
                  'Investment Solution',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
