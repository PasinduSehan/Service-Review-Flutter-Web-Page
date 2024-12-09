import 'package:flutter/material.dart';

class MadakalapuwaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Madakalapuwa"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Madakalapuwa!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
