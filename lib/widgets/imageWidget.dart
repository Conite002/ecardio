import 'package:flutter/material.dart';

class ImageWithTitle extends StatelessWidget {
  final String title;
  final String imagePath;
  final double imageSize;

  const ImageWithTitle({
    required this.title,
    required this.imagePath,
    this.imageSize = 120.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: imageSize,
          height: imageSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit
                  .fill, // Pour agrandir l'image pour s'adapter au conteneur
              image: AssetImage(imagePath),
            ),
          ),
        ),
      ],
    );
  }
}
