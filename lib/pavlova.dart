import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rojas_Activity 1'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
  'assets/strawberry.jpg',
  height: 250, // Adjust this number (try 200–300)
  width: double.infinity,
  fit: BoxFit.cover,
),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                    'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Center(child: buildRatingRow()),
                  const SizedBox(height: 24),
                  buildRowTabs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < 4 ? Icons.star : Icons.star_border,
                color: Colors.yellow[700],
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            "90 Reviews",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );

  Widget buildIconTab(IconData icon, String label, String value) => Column(
        children: [
          Icon(icon, color: Colors.yellow[700], size: 28),
          const SizedBox(height: 4),
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
          ),
        ],
      );

  Widget buildRowTabs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconTab(Icons.timer_outlined, 'Prep', '25 min'),
          buildIconTab(Icons.restaurant, 'Cook', '1 hr'),
          buildIconTab(Icons.people_alt_outlined, 'Feeds', '4–6 hrs'),
        ],
      );
}
