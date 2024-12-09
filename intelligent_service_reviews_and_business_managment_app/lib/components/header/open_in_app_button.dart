

import 'package:flutter/material.dart';

class OpenInAppButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        // Define the action for the button here.
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.0),
      ),
      icon: Icon(Icons.open_in_browser, color: Colors.red[800]),
      label: Text(
        "Open in App",
        style: TextStyle(color: Colors.red[800]),
      ),
    );
  }
}
