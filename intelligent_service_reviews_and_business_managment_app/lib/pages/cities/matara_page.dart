import 'package:flutter/material.dart';

class MataraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Matara"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Matara!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
