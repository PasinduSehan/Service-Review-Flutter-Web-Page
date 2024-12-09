import 'package:flutter/material.dart';

class HambantotaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants in Hambanthota"),
      ),
      body: Center(
        child: Text(
          "Welcome to the best restaurants in Hambanthota!",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
