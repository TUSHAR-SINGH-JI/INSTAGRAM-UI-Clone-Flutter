import 'package:flutter/material.dart';

class ShopGride extends StatelessWidget {
  const ShopGride({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths (Use local assets or network URLs)
    List<String> imageList = [
      "assets/sh10.jpg",
      "assets/sh11.jpg",
      "assets/sh12.jpg",
      "assets/sh2.jpg",
      "assets/sh3.jpg",
      "assets/sh4.jpg",
      "assets/sh5.jpg",
      "assets/sh6.jpg",
      "assets/sh7.jpg",
      "assets/sh8.jpg",
      "assets/sh9.jpg",
      "assets/sh10.jpg",
      // Add more images as needed
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns
        crossAxisSpacing: 4, // Space between columns
        mainAxisSpacing: 4, // Space between rows
        childAspectRatio: 0.75, // Adjust aspect ratio for better fit
      ),
      itemCount: imageList.length, // Number of images
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              image: DecorationImage(
                image: AssetImage(imageList[index]), // Load image from assets
                fit: BoxFit.cover, // Ensures image covers full area
              ),
            ),
          ),
        );
      },
    );
  }
}
