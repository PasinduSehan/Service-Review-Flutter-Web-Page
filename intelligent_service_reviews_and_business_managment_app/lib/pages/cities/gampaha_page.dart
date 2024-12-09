import 'package:flutter/material.dart';

class GampahaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Gampaha"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Gampaha!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
