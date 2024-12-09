

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReviewWebPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ReviewWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReviewShow(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewShow extends StatefulWidget {
  @override
  _ReviewShowState createState() => _ReviewShowState();
}

class _ReviewShowState extends State<ReviewShow> {
  bool _showAll = false;

  final List<Review> reviews = [
    Review(
      user: 'Ron G.',
      time: 'Just now',
      profilePhoto: 'lib/assets/recent_activity/men3.jpeg',
      title: 'Lakshan Auto AC',
      rating: 4,
      photos: ['lib/assets/ac_auto.jpeg'],
      reviewText: 'Great place! Highly recommended for anyone in the area.',
    ),
    Review(
      user: 'Cady A.',
      time: '1 minute ago',
      profilePhoto: 'lib/assets/recent_activity/girl1.jpeg',
      title: 'Pizza Hut Nugegoda',
      rating: 5,
      photos: ['lib/assets/pizza2.jpg'],
      reviewText: 'Perfect place for a quick meal. Great service and clean environment.',
    ),
    Review(
      user: 'Lasok O.',
      time: '5 minutes ago',
      profilePhoto: 'lib/assets/recent_activity/men1.jpeg',
      title: 'Dompe Shushi ',
      rating: 3,
      photos: ['lib/assets/green_vegan.jpeg'],
      reviewText: 'Good ambiance but average food.',
    ),
    Review(
      user: 'Rina D.',
      time: '10 minutes ago',
      profilePhoto: 'lib/assets/recent_activity/girl2.jpeg',
      title: 'Yummy Cafe',
      rating: 5,
      photos: ['lib/assets/coffee.jpeg'],
      reviewText: 'Best coffee in town! A must-visit for coffee lovers.',
    ),
    Review(
      user: 'John D.',
      time: '15 minutes ago',
      profilePhoto: 'lib/assets/recent_activity/men2.jpeg',
      title: 'Automotive Space',
      rating: 4,
      photos: ['lib/assets/ac_auto.jpeg'],
      reviewText: 'Great repair shop with excellent customer service!',
    ),
    Review(
      user: 'Maria T.',
      time: '20 minutes ago',
      profilePhoto: 'lib/assets/recent_activity/girl3.jpeg',
      title: 'Malini Sewing & Alterations',
      rating: 5,
      photos: ['lib/assets/Sewing & Alterations.jpeg'],
      reviewText: 'Fantastic sewing services. Highly recommended for alterations.',
    ),
    Review(
      user: 'Lanka S.',
      time: '25 minutes ago',
      profilePhoto: 'lib/assets/recent_activity/men4.jpeg',
      title: 'Lanka Security Services',
      rating: 4,
      photos: ['lib/assets/security.jpeg'],
      reviewText: 'Professional security services for events and businesses.',
    ),
      Review(
      user: 'Sara K.',
      time: '30 minutes ago',
      profilePhoto: 'lib/assets/recent_activity/girl4.jpeg',
      title: 'Shan Mobile Repair Shop',
      rating: 5,
      photos: ['lib/assets/Mobile Phone Repair.jpeg'],
      reviewText: 'Quick and reliable mobile repair service. Affordable pricing.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final displayedReviews = _showAll ? reviews : reviews.sublist(0, 4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Recent Activity",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 16),
        Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          alignment: WrapAlignment.start,
          children: displayedReviews.asMap().entries.map((entry) {
            int index = entry.key;
            Review review = entry.value;

            // Custom size for 5th and 7th boxes
            double width = 280;
            double height = 400;
            if (index == 4) width = 350;
            if (index == 6) height = 450;
             if (index == 2) height = 350;
             if (index == 3) width = 350;

            return _buildReviewBox(context, review, width, height);
          }).toList(),
        ),
        SizedBox(height: 16),
        Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                _showAll = !_showAll;
              });
            },
            child: Text(
              _showAll ? "View Less" : "View More",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReviewBox(BuildContext context, Review review, double width, double height) {
    return GestureDetector(
      onTap: () {
        // Add functionality for box click if needed
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(review.profilePhoto),
                  radius: 20,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.user,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      review.time,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.0),
            if (review.photos.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  review.photos.first,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 8.0),
            Text(
              review.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            const SizedBox(height: 4.0),
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  index < review.rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 16,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              review.reviewText,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite_border, color: Colors.red, size: 20),
                Icon(Icons.thumb_up_alt_outlined, color: Colors.blue, size: 20),
                Icon(Icons.sentiment_satisfied_alt, color: Colors.green, size: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Review {
  final String user;
  final String time;
  final String profilePhoto;
  final String title;
  final int rating;
  final List<String> photos;
  final String reviewText;

  Review({
    required this.user,
    required this.time,
    required this.profilePhoto,
    required this.title,
    required this.rating,
    required this.photos,
    required this.reviewText,
  });
}


