import 'package:flutter/material.dart';

class ColomboPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Colombo"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Colombo!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
