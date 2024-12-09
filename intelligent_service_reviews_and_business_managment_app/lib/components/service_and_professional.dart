


import 'package:flutter/material.dart';

import '../pages/service_and_professional/apartments.dart';
import '../pages/service_and_professional/automotive.dart';
import '../pages/service_and_professional/keys_locksmiths.dart';
import '../pages/service_and_professional/laundromat.dart';
import '../pages/service_and_professional/mobile_phone_repair.dart';
import '../pages/service_and_professional/movers.dart';
import '../pages/service_and_professional/plumbing.dart';
import '../pages/service_and_professional/security.dart';
import '../pages/service_and_professional/sewing_alterations.dart';

class ServiceAndProfessional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final services = [
      {"image": 'lib/assets/automotive.jpeg', "label": "Automotive", "page": AutomotivePage()},
      {"image": 'lib/assets/apartment.jpeg', "label": "Apartments", "page": ApartmentsPage()},
      {"image": 'lib/assets/Sewing & Alterations.jpeg', "label": "Sewing & Alterations", "page": SewingAlterationsPage()},
      {"image": 'lib/assets/plumbing.jpeg', "label": "Plumbing", "page": PlumbingPage()},
      {"image": 'lib/assets/key.jpeg', "label": "Keys & Locksmiths", "page": KeysLocksmithsPage()},
      {"image": 'lib/assets/Mobile Phone Repair.jpeg', "label": "Mobile Phone Repair", "page": MobilePhoneRepairPage()},
      {"image": 'lib/assets/Laundromat.jpeg', "label": "Laundromat", "page": LaundromatPage()},
      {"image": 'lib/assets/movers.jpeg', "label": "Movers", "page": MoversPage()},
      {"image": 'lib/assets/security.jpeg', "label": "Security", "page": SecurityPage()},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services & Professionals",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: services.map((service) {
              return _buildServiceCard(context, service);
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildServiceCard(BuildContext context, Map<String, dynamic> service) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => service['page']),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            // Photo with hover effect
            HoverEffectImage(
              imagePath: service['image'] as String,
            ),

            SizedBox(height: 8.0),

            // Name with underline hover effect
            HoverEffectText(
              text: service['label'] as String,
            ),
          ],
        ),
      ),
    );
  }
}

class HoverEffectImage extends StatefulWidget {
  final String imagePath;

  const HoverEffectImage({required this.imagePath});

  @override
  _HoverEffectImageState createState() => _HoverEffectImageState();
}

class _HoverEffectImageState extends State<HoverEffectImage> {
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
        width: isHovered ? 130.0 : 120.0,
        height: isHovered ? 130.0 : 120.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
          ),
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
          decoration: isHovered ? TextDecoration.underline : TextDecoration.none,
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
