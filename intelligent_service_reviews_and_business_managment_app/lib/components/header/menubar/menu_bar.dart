import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/more/more.dart';

import 'package:intelligent_service_reviews_and_business_managment_app/pages/footer/add_business_review_app/add_business.dart';
import 'menubar_pages/bookmarks.dart';

import 'menubar_pages/login.dart';
import 'menubar_pages/nearby.dart';
import 'menubar_pages/sign_up.dart';
import 'menubar_pages/start_project.dart';
import 'menubar_pages/choice.dart';
import 'menubar_pages/support.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ensure full width for proper layout
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Menu Icon
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              _openDrawer(context); // Open the drawer on press
            },
          ),

          // Centered Title
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "Review App",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // Empty space for symmetry
          SizedBox(width: 48.0), // Same width as the menu button for balance
        ],
      ),
    );
  }

  void _openDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Header Section
              Container(
                color: Colors.red[800],
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Review App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.0),

              // Menu Items with Icons
              Expanded(
                child: ListView(
                  children: [
                    _buildHoverMenuItem(
                        context, Icons.near_me, "Nearby", NearbyPage()),
                    _buildHoverMenuItem(
                        context, Icons.bookmark, "Bookmarks", BookmarksPage()),
                    _buildHoverMenuItem(
                        context, Icons.category, "Categories", MorePage()),
                    _buildHoverMenuItem(context, Icons.lightbulb,
                        "Start a Project", StartProjectPage()),
                    _buildHoverMenuItem(context, Icons.add_business,
                        "Add a Business to Review App", AddBusiness()),
                  ],
                ),
              ),

              SizedBox(height: 24.0),

              // Login/Signup Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        blurRadius: 8.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log in to make a review",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildButton(context, "Log In", Colors.white,
                              Colors.red[800]!, LoginPage()),
                          _buildButton(context, "Sign Up", Colors.red[800]!,
                              Colors.white, SignUpPage()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Footer Section
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) {
                          // Add hover effect for "Ad Choices"
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ChoicePage()));
                          },
                          child: Text(
                            "Choices",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Text("  •  "),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SupportPage()));
                          },
                          child: Text(
                            "Support",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHoverMenuItem(
      BuildContext context, IconData icon, String label, Widget page) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (_) {
        // Hover effect: Add underline
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
        child: ListTile(
          leading: Icon(icon, color: Colors.red[800]),
          title: Text(
            label,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Color bgColor,
      Color textColor, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: textColor,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
