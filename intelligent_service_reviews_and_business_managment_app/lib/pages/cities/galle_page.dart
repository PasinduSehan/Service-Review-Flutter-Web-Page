import 'package:flutter/material.dart';

class GallePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Galle"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Galle!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
