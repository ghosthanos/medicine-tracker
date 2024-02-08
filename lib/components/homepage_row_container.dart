import 'package:flutter/material.dart';

class HomepageRowContainer extends StatelessWidget {
  final Color containerColor;
  final String label;
  final String imagePath;
  final VoidCallback onTap;

  HomepageRowContainer({
    required this.containerColor,
    required this.label,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.width /
                      5, // Use width instead of height to make it a perfect circle
                  decoration: BoxDecoration(
                    color: containerColor,
                    shape: BoxShape.circle, // Make it circular
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit
                          .contain, // Center the image within the container
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Outfit',
              fontSize: MediaQuery.of(context).size.width / 30,
            ),
          ),
        ],
      ),
    );
  }
}
