import 'package:flutter/material.dart';
import 'package:medicine_tracker/components/colors.dart';

class AllMedicinesContainer extends StatelessWidget {
  final String medicineTypeIcon;
  final String medicineTypeName;
  final VoidCallback onTap;

  AllMedicinesContainer({
    required this.medicineTypeIcon,
    required this.medicineTypeName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width /
            2, // Half the width of the screen
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 3.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.secondaryColorDark),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Image.asset(
                    medicineTypeIcon,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      medicineTypeName,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Outfit',
                        fontSize: MediaQuery.of(context).size.width / 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
