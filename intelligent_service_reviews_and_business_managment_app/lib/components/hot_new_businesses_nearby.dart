import 'package:flutter/material.dart';
import '../pages/hot_new_business_nearby/ace_auto_repair.dart';
import '../pages/hot_new_business_nearby/green_vegan_spot.dart';
import '../pages/hot_new_business_nearby/joes_grill.dart';
import '../pages/hot_new_business_nearby/pizza_palace.dart';
import '../pages/hot_new_business_nearby/tasty_thai.dart';
import '../pages/hot_new_business_nearby/urban_coffee_bar.dart';

class HotNewBusinessesNearby extends StatefulWidget {
  @override
  _HotNewBusinessesNearbyState createState() => _HotNewBusinessesNearbyState();
}

class _HotNewBusinessesNearbyState extends State<HotNewBusinessesNearby> {
  bool _showAllBusinesses = false;

  final List<Map<String, dynamic>> businesses = [
    {
      "name": "Rose Tasty Thai",
      "rating": 5.0,
      "category": "Thai Cuisine",
      "imagePath": 'lib/assets/tasty_thai.jpeg',
      "page": TastyThaiPage(),
    },
    {
      "name": "New Urban Coffee Bar",
      "rating": 4.0,
      "category": "Coffee & Tea",
      "imagePath": 'lib/assets/coffee.jpeg',
      "page": UrbanCoffeeBarPage(),
    },
    {
      "name": "Lucky Ace Auto Repair",
      "rating": 4.0,
      "category": "Auto Services",
      "imagePath": 'lib/assets/ac_auto.jpeg',
      "page": AceAutoRepairPage(),
    },
    {
      "name": "Joe's Grill Mahanama",
      "rating": 4.5,
      "category": "Barbecue",
      "imagePath": 'lib/assets/grill.jpeg',
      "page": JoesGrillPage(),
    },
    {
      "name": "Pizza Hut",
      "rating": 4.8,
      "category": "Italian",
      "imagePath": 'lib/assets/pizza.jpeg',
      "page": PizzaPalacePage(),
    },
    {
      "name": "Green Vegan Spot",
      "rating": 4.2,
      "category": "Vegan Cuisine",
      "imagePath": 'lib/assets/green_vegan.jpeg',
      "page": GreenVeganSpotPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Display only a subset of businesses if _showAllBusinesses is false
    final displayedBusinesses =
        _showAllBusinesses ? businesses : businesses.sublist(0, 3);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hot New Businesses Nearby",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.0),
        // Business Cards
        Column(
          children: displayedBusinesses.map((business) {
            return BusinessCard(
              name: business["name"],
              rating: business["rating"],
              category: business["category"],
              imagePath: business["imagePath"],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => business["page"],
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 16.0),
        // View More / View Less Button-like Section
        GestureDetector(
          onTap: () {
            setState(() {
              _showAllBusinesses = !_showAllBusinesses;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            color: Colors.grey[300],
            alignment: Alignment.center,
            child: Text(
              _showAllBusinesses
                  ? "VIEW LESS BUSINESSES"
                  : "VIEW MORE BUSINESSES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BusinessCard extends StatelessWidget {
  final String name;
  final double rating;
  final String category;
  final String imagePath;
  final VoidCallback onTap;

  const BusinessCard({
    required this.name,
    required this.rating,
    required this.category,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            // Business image with fallback
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey,
                    child: Icon(Icons.image_not_supported, color: Colors.white),
                  );
                },
              ),
            ),
            SizedBox(width: 16.0),
            // Business details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  // Star rating
                  Row(
                    children: List.generate(5, (index) {
                      double starRating = index + 1.0;
                      return Icon(
                        starRating <= rating
                            ? Icons.star
                            : (starRating - rating < 1.0
                                ? Icons.star_half
                                : Icons.star_border),
                        color: Colors.orange,
                        size: 20.0,
                      );
                    }),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    category,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder page for other businesses
class PlaceholderPage extends StatelessWidget {
  final String title;

  const PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.red[800],
      ),
      body: Center(
        child: Text(
          "Welcome to $title!",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
