

import 'package:flutter/material.dart';
import 'menubar/menu_bar.dart' as custom_menubar;
import 'search_bar.dart' as custom_search_bar;


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[800], // Harder red color
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        children: [

////
///these has some tings add menu_bar.dart because it come erro after some of these things add it .......
///


          // Top Row: Menu Icon, Review App Title, and Open in App Button
          custom_menubar.MenuBar(), // Only call the MenuBar
          
            
          SizedBox(height: 16.0),

          // Search Bar
          custom_search_bar.SearchBar(),
        ],
      ),
    );
  }
}

