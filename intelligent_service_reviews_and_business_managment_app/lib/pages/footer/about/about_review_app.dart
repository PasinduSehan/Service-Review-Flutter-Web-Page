
import 'package:flutter/material.dart';
import '../../../components/header/header.dart';
import '../../../components/footer_section.dart';

class AboutReviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Main Content Section
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header Section
                  Header(),

                  // Large Photo Section with Text Overlay
                  Stack(
                    children: [
                      Container(
                        height: 450,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/about_review/carrer.png'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 0,
                        right: 0,
                        child: Text(
                          "Review App connects people with\n"
                          "great local businesses.",
                          style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 1),
                                blurRadius: 6.0,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),

                  // Four Boxes Section with fixed size
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Wrap(
                      spacing: 16.0, // Space between boxes horizontally
                      runSpacing: 16.0, // Space between rows
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        _buildHoverBox(
                          context,
                          imagePath: 'lib/assets/about_review/careers.png', // Replace with image paths
                          title: "Careers",
                          description:
                              "Start a five star career with meaningful opportunities, engaging learning programs, and a rich culture.",
                        ),
                        _buildHoverBox(
                          context,
                          imagePath: 'lib/assets/about_review/investor.png',
                          title: "Newsroom",
                          description:
                              "News and information about Yelp, our people, and products.",
                        ),
                        _buildHoverBox(
                          context,
                          imagePath: 'lib/assets/about_review/newsroom.png',
                          title: "Investor Relations",
                          description:
                              "Get all the financial information you’re looking for about Yelp.",
                        ),
                        _buildHoverBox(
                          context,
                          imagePath: 'lib/assets/about_review/trust.png',
                          title: "Trust & Safety",
                          description:
                              "Learn how Yelp works hard to maintain our community's trust, and make the platform helpful for everyone.",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),

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

  Widget _buildHoverBox(
    BuildContext context, {
    required String imagePath,
    required String title,
    required String description,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          // Handle box click (optional)
        },
        child: Container(
          width: 250, // Set fixed width for each box
          height: 300, // Set fixed height for each box
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                blurRadius: 6.0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Vertically center the content
            crossAxisAlignment: CrossAxisAlignment.center, // Horizontally center the content
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8.0),

              // Title Section (centered)
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center, // Center the title text
              ),
              SizedBox(height: 8.0),

              // Description Section (centered)
              Text(
                description,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center, // Center the description text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
