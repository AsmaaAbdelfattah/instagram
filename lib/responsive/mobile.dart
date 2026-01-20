import 'package:flutter/material.dart';

class MobileUI extends StatefulWidget {
  const MobileUI({super.key});

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("mobile screen")),
    );
  }
}