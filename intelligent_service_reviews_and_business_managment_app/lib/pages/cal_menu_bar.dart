//THIS IS NOT USE
//
//
//
//
//THIS IS NOT USE
//
//THIS IS NOT USE
import 'package:flutter/material.dart';

import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/more/more.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/footer/add_business_review_app/add_business.dart';
import '../components/header/menubar/menubar_pages/bookmarks.dart';
import '../components/header/menubar/menubar_pages/choice.dart';
import '../components/header/menubar/menubar_pages/login.dart';
import '../components/header/menubar/menubar_pages/nearby.dart';
import '../components/header/menubar/menubar_pages/sign_up.dart';
import '../components/header/menubar/menubar_pages/start_project.dart';
import '../components/header/menubar/menubar_pages/support.dart';

class CalMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white, // Set background color of the sheet
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
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

          // Menu Items with Hover & Active Effects
          Expanded(
            child: ListView(
              children: [
                _buildHoverMenuItem(context, Icons.near_me, "Nearby", NearbyPage()),
                _buildHoverMenuItem(context, Icons.bookmark, "Bookmarks", BookmarksPage()),
                _buildHoverMenuItem(context, Icons.category, "Categories", MorePage()),
                _buildHoverMenuItem(context, Icons.lightbulb, "Start a Project", StartProjectPage()),
                _buildHoverMenuItem(context, Icons.add_business, "Add a Business to Review App", AddBusiness()),
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
                      _buildButton(context, "Log In", Colors.white, Colors.red[800]!, LoginPage()),
                      _buildButton(context, "Sign Up", Colors.red[800]!, Colors.white, SignUpPage()),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => ChoicePage()));
                    },
                    child: Text(
                      "Choices",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text("  •  "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SupportPage()));
                    },
                    child: Text(
                      "Support",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        decoration: TextDecoration.underline,
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
  }

  Widget _buildHoverMenuItem(BuildContext context, IconData icon, String label, Widget page) {
    return GestureDetector(
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
    );
  }

  Widget _buildButton(BuildContext context, String text, Color bgColor, Color textColor, Widget page) {
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
