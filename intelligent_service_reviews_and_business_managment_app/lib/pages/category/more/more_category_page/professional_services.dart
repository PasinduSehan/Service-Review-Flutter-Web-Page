import 'package:flutter/material.dart';

class ProfessionalServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Professional Services"),
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Text(
          "Welcome to Professional Services Category!",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
