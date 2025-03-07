import 'package:flutter/material.dart';

class AcountTab4 extends StatelessWidget {
  const AcountTab4({super.key});

  @override
  Widget build(BuildContext context) {
    // List of image paths (use asset or network images)
    List<String> imageList = [
      "assets/pimg.jpg",
      "assets/pimg1.jpg",
      "assets/dp4.jpg",
      "assets/pimg3.jpg",
      "assets/pimg4.jpg",
      "assets/pimg5.jpg",
      "assets/pimg6.jpg",
      // Add more images as needed
    ];
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns
        crossAxisSpacing: 4, // Space between columns
        mainAxisSpacing: 4, // Space between rows
      ),
      itemCount: imageList.length, // Set the count to the number of images
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Rounded corners
              image: DecorationImage(
                image: AssetImage(imageList[index]), // Load image from assets
                fit: BoxFit.cover, // Cover the full container
              ),
            ),
          ),
        );
      },
    );
  }
}
