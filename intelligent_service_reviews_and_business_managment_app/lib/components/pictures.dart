

import 'dart:async'; // For Timer
import 'package:flutter/material.dart';

class Pictures extends StatefulWidget {
  @override
  _PicturesState createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  int _currentImageIndex = 0; // Keeps track of the current image
  late Timer _timer; // Timer for auto image switching

  final List<Map<String, String>> _imagePaths = [
    {
      'image': 'lib/assets/p.jpg',
      'title': 'Pizza',
    },
    {
      'image': 'lib/assets/auto_ac.webp',
      'title': 'Auto AC',
    },
    {
      'image': 'lib/assets/pizza2.jpg',
      'title': 'BBQ Pizza',
    },
    {
      'image': 'lib/assets/plumber2.jpg',
      'title': 'Plumber',
    },
  ];

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

    // Set up a timer to change the image every 5 seconds
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        // Move to the next image
        if (_currentImageIndex < _imagePaths.length - 1) {
          _currentImageIndex++;
          _pageController.animateToPage(
            _currentImageIndex,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        } else {
          // Reset to the first image smoothly
          _currentImageIndex = 0;
          _pageController.jumpToPage(0);
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    _pageController.dispose(); // Dispose the PageController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400, // Set the height of the container
        child: PageView.builder(
          controller: _pageController,
          itemCount: _imagePaths.length,
          itemBuilder: (context, index) {
            final imageData = _imagePaths[index];
            return Stack(
              alignment: Alignment.center, // Align children to the center
              children: [
                // Image with title overlay
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0), // Round corners
                  child: Image.asset(
                    imageData['image']!, // Display the current image
                    height: 400, // Set the height
                    width: double.infinity, // Set width to fill
                    fit: BoxFit.cover, // Scale the image to cover the space
                  ),
                ),
                // Title (Text) overlay centered in the image
                Align(
                  alignment: Alignment.centerLeft, // Center the text
                  child: Container(
                    color: Colors.black.withOpacity(0.6), // Semi-transparent background
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      imageData['title']!,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
