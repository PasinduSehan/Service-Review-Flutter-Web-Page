import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/components/pictures.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/components/reviewShow.dart';

import 'components/header/header.dart';
import 'components/footer_section.dart';
import 'components/best_restaurants_in_top_cities.dart';
import 'components/hot_new_businesses_nearby.dart';
import 'components/open_review_button.dart';
import 'components/service_and_professional.dart';
import 'components/category_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review App',
      debugShowCheckedModeBanner: false, // Removes the debug banner
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ReviewWebPage(),
    );
  }
}

class ReviewWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Call the Header Section
          Header(),

          // Content Section
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Call Category Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CategorySection(),
                  ),

                  //call the picture section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Pictures(),
                  ),

                  // Services & Professionals Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ServiceAndProfessional(),
                  ),

                  // Open Review Button Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: OpenReviewButton(),
                  ),

                    Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ReviewShow(), // Display the ReviewShow widget
                  ),

                  // Hot New Businesses Nearby Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: HotNewBusinessesNearby(),
                  ),

                  // Best Restaurants in Top Cities
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: BestRestaurantsInTopCities(),
                  ),

                  // Footer Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FooterSection(),
                  ),
                
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 