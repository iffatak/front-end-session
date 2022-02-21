import 'package:flutter/material.dart';
import 'package:test_app/common/optionChip.dart';
import 'package:test_app/components/IconCard.dart';
import 'package:test_app/helpers/imageHelpers.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1F283E),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OptionChips(),
              Title(title: 'Bitcoin'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Row(children: [
                      IconCard(icon: getIconImage('bitcoin')),
                      SizedBox(width: 12),
                      Text(
                        'Select Coin',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            letterSpacing: 1),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey[600],
                      )
                    ]),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(getIconImage('avatar')),
                      radius: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 24),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white70, fontSize: 26, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class OptionChips extends StatelessWidget {
  const OptionChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          OptionChip(
            label: 'Overview',
            selected: true,
          ),
          const SizedBox(width: 20),
          OptionChip(
            label: 'Assets',
          ),
          const SizedBox(width: 20),
          OptionChip(
            label: 'Swap',
          )
        ],
      ),
    );
  }
}
