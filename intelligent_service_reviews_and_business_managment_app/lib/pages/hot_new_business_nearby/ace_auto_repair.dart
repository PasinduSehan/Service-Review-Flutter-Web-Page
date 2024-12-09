// import 'package:flutter/material.dart';

// class AceAutoRepairPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Ace Auto Repair"),
//         backgroundColor: Colors.red[800],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Welcome to Ace Auto Repair!",
//               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               "Expert auto services just for you.",
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 32.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context); // Go back to the previous page
//               },
//               child: Text("Back to List"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AceAutoRepairPage extends StatefulWidget {
  @override
  _AceAutoRepairPageState createState() => _AceAutoRepairPageState();
}

class _AceAutoRepairPageState extends State<AceAutoRepairPage> {
  bool _showMoreBusinesses = false;

  final List<Map<String, dynamic>> businesses = [
    {"name": "Tasty Thai", "category": "Thai Cuisine", "rating": 5},
    {"name": "Urban Coffee Bar", "category": "Coffee & Tea", "rating": 4},
    {"name": "Ace Auto Repair", "category": "Auto Services", "rating": 4},
    {"name": "Joe's Grill", "category": "Barbecue", "rating": 4.5},
    {"name": "Pizza Palace", "category": "Italian", "rating": 4.8},
    {"name": "Green Vegan Spot", "category": "Vegan Cuisine", "rating": 4.2},
  ];

  @override
  Widget build(BuildContext context) {
    final displayedBusinesses = _showMoreBusinesses
        ? businesses
        : businesses.sublist(0, 3); // Show only the first 3 items

    return Scaffold(
      appBar: AppBar(
        title: Text("Ace Auto Repair"),
        backgroundColor: Colors.red[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Business Information
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Ace Auto Repair!",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Expert auto services just for you.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.0),

            // List of Businesses
            Expanded(
              child: ListView.builder(
                itemCount: displayedBusinesses.length,
                itemBuilder: (context, index) {
                  final business = displayedBusinesses[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.red[100],
                        child: Icon(Icons.store, color: Colors.red),
                      ),
                      title: Text(
                        business["name"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          "${business["category"]} - Rating: ${business["rating"]}⭐"),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                        // Navigate to business details
                      },
                    ),
                  );
                },
              ),
            ),

            // View More / View Less Button-like Section
            GestureDetector(
              onTap: () {
                setState(() {
                  _showMoreBusinesses = !_showMoreBusinesses;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                color: Colors.grey[300],
                alignment: Alignment.center,
                child: Text(
                  _showMoreBusinesses
                      ? "VIEW LESS NEW BUSINESSES"
                      : "VIEW MORE NEW BUSINESSES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
