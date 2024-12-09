import 'package:flutter/material.dart';
import '../../components/footer_section.dart';
import '../../components/header/header.dart';

// Restaurant class model
class Restaurant {
  final String name;
  final String location;
  final String rating;
  final int reviews;
  final String price;
  final String openTime;
  final String imagePath;
  final List<String> tags;

  Restaurant({
    required this.name,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.openTime,
    required this.imagePath,
    required this.tags,
  });
}

// Main Restaurant Page
class RestaurantsPage extends StatelessWidget {
  final List<Restaurant> restaurants = [
    Restaurant(
      name: '8MilePi Detroit Style Pizza',
      location: 'SoMa',
      rating: '3.2',
      reviews: 19,
      price: '\$\$',
      openTime: '10:00 PM',
      imagePath: 'lib/assets/pizza4.jpeg',
      tags: ['Pizza', 'Intimate'],
    ),
    Restaurant(
      name: 'Hard Rock Cafe',
      location: 'Fisherman\'s Wharf',
      rating: '2.8',
      reviews: 1100,
      price: '\$\$',
      openTime: '9:00 PM',
      imagePath: 'lib/assets/pizza2.jpg',
      tags: ['Burgers', 'American', 'Touristy', 'Casual'],
    ),
    Restaurant(
      name: 'Bottega',
      location: 'Mission',
      rating: '4.3',
      reviews: 1300,
      price: '\$\$',
      openTime: '11:00 PM',
      imagePath: 'lib/assets/coffee.jpeg',
      tags: ['Outdoor seating', 'Local'],
    ),
    Restaurant(
      name: 'Four Chairs',
      location: 'Bernal Heights',
      rating: '4.3',
      reviews: 688,
      price: '\$\$',
      openTime: '2:30 PM',
      imagePath: 'lib/assets/tasty_thai.jpeg',
      tags: ['Breakfast & Brunch', 'Trendy', 'Casual'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main Content Section
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Header(), // Include Header
            ),

            // Main Content Section (restaurant list)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Centered Row with Restaurants
                  for (int i = 0; i < restaurants.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Container for each restaurant
                          Container(
                            width: 300,
                            child: Card(
                              margin: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image Section
                                  Image.asset(
                                    restaurants[i].imagePath,
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Restaurant Name
                                        Text(
                                          restaurants[i].name,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        // Restaurant Details (Location, Price, Open Time)
                                        Text(
                                          '${restaurants[i].location} • ${restaurants[i].price} • Open until ${restaurants[i].openTime}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        // Rating and Reviews Section
                                        Text(
                                          '${restaurants[i].rating} ⭐ (${restaurants[i].reviews} reviews)',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.orange,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        // Tags Section (Chips)
                                        Wrap(
                                          spacing: 8.0,
                                          children: restaurants[i]
                                              .tags
                                              .map((tag) => Chip(
                                                    label: Text(tag),
                                                    backgroundColor:
                                                        Colors.grey[200],
                                                  ))
                                              .toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),

            // Footer Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FooterSection(), // Include Footer
            ),
          ],
        ),
      ),
    );
  }
}
