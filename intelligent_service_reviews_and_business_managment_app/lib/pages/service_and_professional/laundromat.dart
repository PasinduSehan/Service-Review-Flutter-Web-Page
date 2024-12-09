import 'package:flutter/material.dart';

class LaundromatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laundromat"),
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Text(
          "Welcome to Laundromat Services",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
