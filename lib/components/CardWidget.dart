import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key});

  final List<Map<String, dynamic>> healthData = [
    {
      'title': 'Blood Pressure',
      'icon': Icons.health_and_safety,
      'value': '120/80',
      'unit': 'mmHg',
    },
    {
      'title': 'Heart Rate',
      'icon': Icons.favorite,
      'value': '75',
      'unit': 'bpm',
    },
    {
      'title': 'Temperature',
      'icon': Icons.thermostat,
      'value': '98.6',
      'unit': '°F',
    },
    {
      'title': 'Respiratory Rate',
      'icon': Icons.air,
      'value': '16',
      'unit': 'breaths/min',
    },
    {
      'title': 'Urine Level',
      'icon': Icons.bar_chart_rounded,
      'value': '1.2',
      'unit': 'L/day',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(5, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.cyan[800],
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                healthData[index]['icon'],
                size: 50,
                color: Colors.white,
              ),
              SizedBox(height: 8), // Spacing between icon and title
              Text(
                healthData[index]['title'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 4), // Spacing between title and value
              Text(
                healthData[index]['value'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                healthData[index]['unit'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
