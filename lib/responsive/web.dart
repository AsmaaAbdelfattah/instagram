import 'package:flutter/material.dart';

class WebUI extends StatefulWidget {
  const WebUI({super.key});

  @override
  State<WebUI> createState() => _WebUIState();
}

class _WebUIState extends State<WebUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("web screen")),
    );
  }
}