import 'package:flutter/material.dart';

class OpenReviewButton extends StatefulWidget {
  @override
  _OpenReviewButtonState createState() => _OpenReviewButtonState();
}

class _OpenReviewButtonState extends State<OpenReviewButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: double.infinity, // Full width of the container
        height: isHovering ? 60.0 : 50.0, // Enlarges slightly on hover
        decoration: BoxDecoration(
          color: isHovering
              ? Colors.grey[800]
              : Colors.black, // Color changes on hover
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
          boxShadow: isHovering
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8.0,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: TextButton(
          onPressed: () {
            // Add your button action here
            print("Open with Review App clicked!");
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero, // Removes default padding
          ),
          child: Center(
            child: Text(
              "Open with Review App",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
