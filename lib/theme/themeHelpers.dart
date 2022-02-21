import 'package:flutter/cupertino.dart';

BoxDecoration backgroundGradient = BoxDecoration(
  borderRadius: BorderRadius.circular(24),
  gradient: const LinearGradient(
    colors: [Color(0xFF4E556A), Color(0xFF1B2237)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 0.025],
    tileMode: TileMode.decal,
  ),
);

BoxDecoration bottomNavGradient = const BoxDecoration();
