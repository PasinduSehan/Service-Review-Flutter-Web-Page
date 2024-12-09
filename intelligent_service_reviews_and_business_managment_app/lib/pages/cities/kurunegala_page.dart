import 'package:flutter/material.dart';

class KurunegalaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Kurunegala"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Kurunegala!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
