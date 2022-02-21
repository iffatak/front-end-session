import 'package:flutter/material.dart';

class OptionChip extends StatefulWidget {
  OptionChip({
    required this.label,
    this.selected = false,
    Key? key,
  }) : super(key: key);

  final String label;
  bool selected;

  @override
  State<OptionChip> createState() => _OptionChipState();
}

class _OptionChipState extends State<OptionChip> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(8),
        color: widget.selected ? Color(0xFF27324E) : Color(0xFF1F283E),
        child: Text(
          widget.label,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: widget.selected ? Colors.white70 : Colors.grey[600],
              letterSpacing: 2),
        ),
      ),
    );
  }
}
