import 'package:flutter/material.dart';

class ApartmentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apartments"),
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Text(
          "Welcome to Apartments Services",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
