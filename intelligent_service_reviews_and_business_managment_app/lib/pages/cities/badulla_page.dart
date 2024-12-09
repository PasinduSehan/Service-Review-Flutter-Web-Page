import 'package:flutter/material.dart';

class BadullaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Badulla"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Badulla!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
