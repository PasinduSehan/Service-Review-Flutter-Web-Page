import 'package:flutter/material.dart';

class JaffnaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Jaffna"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Jaffna!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
