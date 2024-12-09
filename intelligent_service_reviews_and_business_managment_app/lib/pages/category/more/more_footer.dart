//THIS IS NOT USE
//
//THIS IS NOT USE
//
//
//THIS IS NOT USE
import 'package:flutter/material.dart';

class MoreFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Stretch the footer across the screen
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 88, 88, 124),
        borderRadius: BorderRadius.vertical(
         // top: Radius.circular(16.0), // Rounded corners at the top
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            offset: Offset(0, -2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Text(
        "© 2024 Review App. All Rights Reserved.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0, // Increased font size for better visibility
          fontWeight: FontWeight.bold, // Bold for emphasis
          color: const Color.fromARGB(255, 233, 229, 229),
        ),
      ),
    );
  }
}
