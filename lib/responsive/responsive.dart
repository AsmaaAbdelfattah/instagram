import 'package:flutter/material.dart';
import 'package:instagram/responsive/mobile.dart';
import 'package:instagram/responsive/web.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return WebUI();
        } else {
          return MobileUI();
        }
      },
    );
  }
}
