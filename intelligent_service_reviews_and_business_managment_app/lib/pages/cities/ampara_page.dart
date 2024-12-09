import 'package:flutter/material.dart';

class AmparaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Ampara"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Ampara!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
