import 'package:ecardio/widgets/appconfig.dart';
import 'package:flutter/material.dart';

class CardToAdd extends StatelessWidget {
  final String title;
  final IconData icon;
  final double review;
  final Color color;

  const CardToAdd({
    required this.title,
    required this.icon,
    required this.review,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(10),
      color: AppColors.lightPrimaryColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.add_circle, color: Colors.white),
                    const SizedBox(width: 5),
                    Text(
                      ' $title',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                Icon(icon, color: color),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Review: $review',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
