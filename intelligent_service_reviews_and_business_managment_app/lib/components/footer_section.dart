


import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/footer/add_business_review_app/add_business.dart';

// Import pages for About Section
import '../pages/footer/about/about_review_app.dart';
import '../pages/footer/about/accessibility_statement.dart';
import '../pages/footer/about/ad_choices.dart';
import '../pages/footer/about/careers.dart';
import '../pages/footer/about/content_guidelines.dart';
import '../pages/footer/about/investor_relations.dart';
import '../pages/footer/about/press.dart';
import '../pages/footer/about/privacy_policy.dart';
import '../pages/footer/about/terms_of_service.dart';
import '../pages/footer/about/trust_and_safety.dart';
import '../pages/footer/about/your_privacy_choices.dart';

// Import pages for Discover Section
import '../pages/footer/discover/collections.dart';
import '../pages/footer/discover/developers.dart';
import '../pages/footer/discover/events.dart';
import '../pages/footer/discover/project_cost_guides.dart';
import '../pages/footer/discover/review_app_blog.dart';
import '../pages/footer/discover/review_app_mobile.dart';
import '../pages/footer/discover/rss.dart';
import '../pages/footer/discover/support.dart';
import '../pages/footer/discover/talk.dart';

// Import pages for Review App for Business Section
import '../pages/footer/review_app_for_business/advertise_on_review_app.dart';
import '../pages/footer/review_app_for_business/business_owner_login.dart';
import '../pages/footer/review_app_for_business/business_success_stories.dart';
import '../pages/footer/review_app_for_business/business_support.dart';
import '../pages/footer/review_app_for_business/claim_your_business_page.dart';
import '../pages/footer/review_app_for_business/review_app_blog_for_business.dart';
import '../pages/footer/review_app_for_business/review_app_data_for_b2b.dart';
import '../pages/footer/review_app_for_business/review_app_data_for_b2c.dart';
import '../pages/footer/review_app_for_business/review_app_for_business.dart';
import '../pages/footer/review_app_for_business/review_app_for_restaurant_owners.dart';
import '../pages/footer/review_app_for_business/table_management.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main Row for Sections
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // About Section
              _buildSection(context, "About", [
                {"title": "About Review app", "page": AboutReviewApp()},
                {"title": "Careers", "page": Careers()},
                {"title": "Press", "page": Press()},
                {"title": "Investor Relations", "page": InvestorRelations()},
                {"title": "Trust & Safety", "page": TrustAndSafety()},
                {"title": "Content Guidelines", "page": ContentGuidelines()},
                {"title": "Accessibility Statement", "page": AccessibilityStatement()},
                {"title": "Terms of Service", "page": TermsOfService()},
                {"title": "Privacy Policy", "page": PrivacyPolicy()},
                {"title": "Ad Choices", "page": AdChoices()},
                {"title": "Your Privacy Choices", "page": YourPrivacyChoices()},
              ]),

              // Discover Section
              _buildSection(context, "Discover", [
                {"title": "Review app Project Cost Guides", "page": ProjectCostGuides()},
                {"title": "Collections", "page": Collections()},
                {"title": "Talk", "page": Talk()},
                {"title": "Events", "page": Events()},
                {"title": "Review app Blog", "page": ReviewAppBlog()},
                {"title": "Support", "page": Support()},
                {"title": "Review app Mobile", "page": ReviewAppMobile()},
                {"title": "Developers", "page": Developers()},
                {"title": "RSS", "page": RSS()},
              ]),

              // Review App for Business Section
              _buildSection(context, "Review app for Business", [
                {"title": "Review app for Business", "page": ReviewAppForBusiness()},
                {"title": "Business Owner Login", "page": BusinessOwnerLogin()},
                {"title": "Claim your Business Page", "page": ClaimYourBusiness()},
                {"title": "Advertise on Review app", "page": AdvertiseOnReviewApp()},
                {"title": "Review app for Restaurant Owners", "page": ReviewAppForRestaurantOwners()},
                {"title": "Table Management", "page": TableManagement()},
                {"title": "Business Success Stories", "page": BusinessSuccessStories()},
                {"title": "Business Support", "page": BusinessSupport()},
                {"title": "Review app Blog for Business", "page": ReviewAppBlogForBusiness()},
                {"title": "Review app Data for B2B", "page": ReviewAppDataForB2B()},
                {"title": "Review app Data for B2C", "page": ReviewAppDataForB2C()},
              ]),

              // Languages and Cities Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Languages Dropdown
                    _buildDropdown("Languages",
                        ["English", "Spanish", "French", "German"]),

                    SizedBox(height: 24),

                    // Cities Dropdown
                    _buildDropdown("Cities", [
                      "Explore a City",
                      "New York",
                      "San Francisco",
                      "Chicago",
                      "Dallas",
                      "Los Angeles",
                      "Seattle",
                      "Miami",
                      "Houston",
                    ]),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 24),

          // Footer Bottom Row - Text elements stacked vertically
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddBusiness()),
                  );
                },
                child: Text(
                  "Add a Business on Review app",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16), // Space between the two texts
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Copyright © 2004–2024 Review app Inc. ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    TextSpan(
                      text: "Review app", // This part will be bold
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold, // Making it bold
                      ),
                    ),
                    TextSpan(
                      text:
                          " and related marks are registered trademarks of Review.",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<Map<String, dynamic>> items) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map((item) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => item["page"]),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    item["title"],
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        DropdownButton<String>(
          isExpanded: true,
          value: items.first,
          icon: Icon(Icons.arrow_drop_down),
          onChanged: (value) {},
          items: items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: TextStyle(fontSize: 14),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
