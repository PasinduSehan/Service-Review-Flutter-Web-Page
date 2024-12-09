import 'package:flutter/material.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/auto_repair.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/home_cleaners.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/plumbers.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/reservations.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/restaurants.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/category/takeout.dart';
import 'package:intelligent_service_reviews_and_business_managment_app/pages/service_and_professional/movers.dart';

import 'more_category_page/active_life.dart';
import 'more_category_page/arts_entertainment.dart';
import 'more_category_page/beauty_spas.dart';
import 'more_category_page/coffee_tea.dart';
import 'more_category_page/education.dart';
import 'more_category_page/event_planning_services.dart';
import 'more_category_page/financial_services.dart';
import 'more_category_page/food.dart';
import 'more_category_page/health_medical.dart';
import 'more_category_page/home_services.dart';
import 'more_category_page/hotels_travel.dart';
import 'more_category_page/local_flavor.dart';
import 'more_category_page/local_services.dart';
import 'more_category_page/mass_media.dart';
import 'more_category_page/nightlife.dart';
import 'more_category_page/pets.dart';
import 'more_category_page/professional_services.dart';
import 'more_category_page/public_services_government.dart';
import 'more_category_page/real_estate.dart';
import 'more_category_page/religious_organizations.dart';
import 'more_category_page/shopping.dart';

class MoreCategory extends StatefulWidget {
  @override
  _MoreCategoryState createState() => _MoreCategoryState();
}

class _MoreCategoryState extends State<MoreCategory> {
  int _highlightedIndex = -1;

  final List<Map<String, dynamic>> categories = [
    {"title": "Coffee & Tea", "page": CoffeeTeaPage()},
    {"title": "Food", "page": FoodPage()},
    {"title": "Restaurants", "page": RestaurantsPage()},
    {"title": "Reservations", "page": ReservationsPage()},
    {"title": "Takeout", "page": TakeoutPage()},
    {"title": "Plumbers", "page": PlumbersPage()},
    {"title": "HomeCleaners", "page": HomeCleanersPage()},
    {"title": "AutoRepair", "page": AutoRepairPage()},
    {"title": "Movers", "page": MoversPage()},
    {"title": "Arts & Entertainment", "page": ArtsEntertainmentPage()},
    {"title": "Health & Medical", "page": HealthMedicalPage()},
    {"title": "Professional Services", "page": ProfessionalServicesPage()},
    {"title": "Pets", "page": PetsPage()},
    {"title": "Real Estate", "page": RealEstatePage()},
    {"title": "Hotels & Travel", "page": HotelsTravelPage()},
    {"title": "Local Services", "page": LocalServicesPage()},
    {"title": "Event Planning & Services", "page": EventPlanningServicesPage()},
    {
      "title": "Public Services & Government",
      "page": PublicServicesGovernmentPage()
    },
    {"title": "Financial Services", "page": FinancialServicesPage()},
    {"title": "Education", "page": EducationPage()},
    {"title": "Religious Organizations", "page": ReligiousOrganizationsPage()},
    {"title": "Local Flavor", "page": LocalFlavorPage()},
    {"title": "Mass Media", "page": MassMediaPage()},
    {"title": "Shopping", "page": ShoppingPage()},
    {"title": "Nightlife", "page": NightlifePage()},
    {"title": "Active Life", "page": ActiveLifePage()},
    {"title": "Beauty & Spas", "page": BeautySpasPage()},
    {"title": "Home Services", "page": HomeServicesPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: MouseRegion(
            onEnter: (_) => _highlightCategory(true, index),
            onExit: (_) => _highlightCategory(false, index),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => categories[index]["page"]),
                  );
                },
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  style: TextStyle(
                    fontSize: _highlightedIndex == index
                        ? 20.0
                        : 16.0, // Increase size on hover
                    fontWeight: FontWeight.bold, // Removed bold text
                    color: _highlightedIndex == index
                        ? const Color.fromARGB(255, 15, 14, 14)
                        : const Color.fromARGB(
                            255, 97, 94, 94), // Change color on hover
                  ),
                  child: Text(categories[index]["title"]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _highlightCategory(bool isHovered, int index) {
    setState(() {
      _highlightedIndex = isHovered ? index : -1;
    });
  }
}
