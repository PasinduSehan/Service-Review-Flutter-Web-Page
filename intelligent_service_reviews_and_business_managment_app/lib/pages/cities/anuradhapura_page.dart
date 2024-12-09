import 'package:flutter/material.dart';

class AnuradhapuraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Anuradhapura"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Anuradhapura!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
