import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cities/ampara_page.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cities/badulla_page.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cities/gampaha_page.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cities/hambantota_page.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cities/kalutara_page.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/cities/kurunegala_page.dart';
import '../pages/cities/anuradhapura_page.dart';
import '../pages/cities/colombo_page.dart';
import '../pages/cities/galle_page.dart';

import '../pages/cities/kandy_page.dart';
import '../pages/cities/madakalapuwa_page.dart';
import '../pages/cities/matara_page.dart';
import '../pages/cities/jaffna_page.dart';

class BestRestaurantsInTopCities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cities = [
      {"name": "Restaurants in Colombo", "page": ColomboPage()},
      {"name": "Restaurants in Galle", "page": GallePage()},
      {"name": "Restaurants in Trincomalee", "page": AnuradhapuraPage()},
      {"name": "Restaurants in Kandy", "page": KandyPage()},
      {"name": "Restaurants in Matara", "page": MataraPage()},
      {"name": "Restaurants in Jaffna", "page": JaffnaPage()},
      {"name": "Restaurants in Madakalapuwa", "page": MadakalapuwaPage()},
      {"name": "Restaurants in Kaluthara", "page": KalutaraPage()},
      {"name": "Restaurants in Kurunegala", "page": KurunegalaPage()},
      {"name": "Restaurants in Gampaha", "page": GampahaPage()},
      {"name": "Restaurants in Hambanthota", "page": HambantotaPage()},
      {"name": "Restaurants in Badulla", "page": BadullaPage()},
      {"name": "Restaurants in Ampara", "page": AmparaPage()},
      // Add more cities below if needed
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Title Section - Centered Text
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            "Best Restaurants in Top Cities",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, // Center the title
          ),
        ),
        SizedBox(height: 12.0), // Space between title and cities

        // List of Cities - Each City is clickable
        ...cities.map(
          (city) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => city["page"] as Widget),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                city["name"] as String,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[700], // White ash color
                  fontWeight: FontWeight.normal, // Make the text lighter
                ),
                textAlign: TextAlign.center, // Center city names
              ),
            ),
          ),
        ),
      ],
    );
  }
}
