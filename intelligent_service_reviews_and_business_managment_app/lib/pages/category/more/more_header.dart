//THIS IS NOT USE
//
//THIS IS NOT USE
//
//
//THIS IS NOT USE
import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cal_menu_bar.dart'; // Correct the import

class MoreHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[800], // Red background color for the header
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back Arrow Icon
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context); // Navigate to the previous page
            },
          ),

          // Center Title
          Text(
            "Review App",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          // Menu Icon
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              // Open the Menu Bar (show as bottom sheet)
              _openMenu(context);
            },
          ),
        ],
      ),
    );
  }

  // Function to open the menu
  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return CalMenuBar(); // This will display your MenuBar widget
      },
    );
  }
}
