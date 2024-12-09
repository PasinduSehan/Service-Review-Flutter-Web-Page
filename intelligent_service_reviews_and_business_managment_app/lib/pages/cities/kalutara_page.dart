import 'package:flutter/material.dart';

class KalutaraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Kaluthara"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Kaluthara!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
