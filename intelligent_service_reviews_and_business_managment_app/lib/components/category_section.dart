import 'package:flutter/material.dart';
import '../pages/category/restaurants.dart';
import '../pages/category/reservations.dart';
import '../pages/category/takeout.dart';
import '../pages/category/auto_repair.dart';
import '../pages/category/movers.dart';
import '../pages/category/plumbers.dart';
import '../pages/category/home_cleaners.dart';
import '../pages/category/more/more.dart';

class CategorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "icon": Icons.restaurant,
        "label": "Restaurants",
        "page": RestaurantsPage()
      },
      {
        "icon": Icons.calendar_today,
        "label": "Reservations",
        "page": ReservationsPage()
      },
      {"icon": Icons.takeout_dining, "label": "Takeout", "page": TakeoutPage()},
      {"icon": Icons.build, "label": "Auto Repair", "page": AutoRepairPage()},
      {"icon": Icons.moving, "label": "Movers", "page": MoversPage()},
      {"icon": Icons.plumbing, "label": "Plumbers", "page": PlumbersPage()},
      {
        "icon": Icons.cleaning_services,
        "label": "Home Cleaners",
        "page": HomeCleanersPage()
      },
      {"icon": Icons.more_horiz, "label": "More", "page": MorePage()},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Wrap(
        spacing: 12.0,
        runSpacing: 12.0,
        alignment: WrapAlignment.center,
        children: categories.map((category) {
          return _buildCategoryCard(context, category);
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, Map<String, dynamic> category) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => category['page']),
        );
      },
      child: MouseRegion(
        onEnter: (_) {
          // Hover effect on enter
        },
        onExit: (_) {
          // Hover effect on exit
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 4 - 24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon with hover effect
              HoverEffectIcon(
                icon: category['icon'] as IconData,
              ),
              SizedBox(height: 8.0),
              // Text with underline hover effect
              HoverEffectText(
                text: category['label'] as String,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HoverEffectIcon extends StatefulWidget {
  final IconData icon;

  const HoverEffectIcon({required this.icon});

  @override
  _HoverEffectIconState createState() => _HoverEffectIconState();
}

class _HoverEffectIconState extends State<HoverEffectIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isHovered ? Colors.red[300] : Colors.red[100],
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(16.0),
        child: Icon(
          widget.icon,
          size: 32,
          color: isHovered ? Colors.white : Colors.red,
        ),
      ),
    );
  }
}

class HoverEffectText extends StatefulWidget {
  final String text;

  const HoverEffectText({required this.text});

  @override
  _HoverEffectTextState createState() => _HoverEffectTextState();
}

class _HoverEffectTextState extends State<HoverEffectText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 300),
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
          decoration:
              isHovered ? TextDecoration.underline : TextDecoration.none,
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
