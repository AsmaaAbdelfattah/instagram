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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
        title: Image.asset(
          "lib/imgs/Instagram_logo.svg",
          color: Colors.white,
          height: 45,
        ),
      ),
    );
  }
}
