import 'package:flutter/material.dart';
import 'package:medicine_tracker/components/all_medicine_container.dart';
import 'package:medicine_tracker/components/colors.dart';

class AllMedicines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColorDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColors.orange,
          iconSize: 37,
        ),
        centerTitle: true,
        title: const Text(
          'Medicines',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: AppColors.orange,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 14,
              ),
              child: GridView.count(
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                children: [
                  // Your AllMedicinesContainer widgets go here
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/tablet_32.png',
                    medicineTypeName: 'Tablet',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/capsule_32.png',
                    medicineTypeName: 'Capsule',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/dropper-tool_32.png',
                    medicineTypeName: 'Dropper',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/injection_32.png',
                    medicineTypeName: 'Injection',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/gel_32.png',
                    medicineTypeName: 'Gel',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/lotion_32.png',
                    medicineTypeName: 'Lotion',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/cream_32.png',
                    medicineTypeName: 'Cream',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                  AllMedicinesContainer(
                    medicineTypeIcon: 'icons/inhaler_32.png',
                    medicineTypeName: 'Inhaler',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 7,
            color: AppColors.primaryColorDark,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.orange,
                  ),
                  child: Center(
                    child: Text(
                      'Choose a new medicine',
                      style: TextStyle(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width / 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
