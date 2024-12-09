import 'package:flutter/material.dart';

class KandyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Kandy"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Kandy!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
