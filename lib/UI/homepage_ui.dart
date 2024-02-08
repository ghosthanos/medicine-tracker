import 'package:flutter/material.dart';
import 'package:medicine_tracker/UI/all_medicines.dart';
import 'package:medicine_tracker/components/colors.dart';
import 'package:medicine_tracker/components/homepage_row_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColorDark,
      bottomNavigationBar: Container(
        height: 90,
        child: BottomNavigationBar(
          backgroundColor: Colors.white.withOpacity(0),
          elevation: 0,
          type: BottomNavigationBarType.fixed, // Set the type to fixed

          onTap: (index) {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            }
            if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            }

            if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            }
            if (index == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'icons/home.png',
                width: 30,
                height: 22,
                color: AppColors.secondaryColorDark,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'icons/location.png',
                width: 30,
                height: 22,
                color: AppColors.secondaryColorDark,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'icons/medicine.png',
                width: 30,
                height: 22,
                color: AppColors.secondaryColorDark,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'icons/account.png',
                width: 30,
                height: 22,
                color: AppColors.secondaryColorDark,
              ),
              label: 'Settings',
            ),
          ],
          selectedItemColor: AppColors.secondaryColorDark,
          unselectedItemColor: AppColors.secondaryColorDark,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Image.asset(
              'icons/account.png',
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(height: 10),
            Text(
              'Hello, User',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  color: AppColors.secondaryColorDark),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            //THE ROW WITH THE 4 MAIN FEATURES
            Row(
              children: [
                Spacer(),
                HomepageRowContainer(
                    containerColor: AppColors.orange,
                    label: 'Medicines',
                    imagePath: 'icons/medicine (1).png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllMedicines(),
                        ),
                      );
                    }),
                Spacer(),
                HomepageRowContainer(
                    containerColor: AppColors.yellow,
                    label: 'Prescription',
                    imagePath: 'icons/prescription.png',
                    onTap: () {}),
                Spacer(),
                HomepageRowContainer(
                    containerColor: AppColors.green,
                    label: 'Contacts',
                    imagePath: 'icons/call.png',
                    onTap: () {}),
                Spacer(),
                HomepageRowContainer(
                    containerColor: AppColors.purple,
                    label: 'Medicines',
                    imagePath: 'icons/cycle.png',
                    onTap: () {}),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
