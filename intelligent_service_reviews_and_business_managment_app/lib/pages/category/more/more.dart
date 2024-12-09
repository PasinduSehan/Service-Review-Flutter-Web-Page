

import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/more/more_footer.dart';

import '../../../components/header/header.dart';

import 'more_category.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header Section
        Header(),

          // Main Content Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MoreCategory(),
              
            ),
            
            
          ),

          // Footer Section
          MoreFooter(),
        ],
        
      ),
      
    );
  }
}
