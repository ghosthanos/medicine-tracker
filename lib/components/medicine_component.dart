import 'package:flutter/material.dart';

class MedicineContainer extends StatelessWidget {
  final String medicine_container_image;
  final String medicine_container_heading;

  MedicineContainer(
      {required this.medicine_container_image,
      required this.medicine_container_heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            medicine_container_image,
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text(
            medicine_container_heading,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
