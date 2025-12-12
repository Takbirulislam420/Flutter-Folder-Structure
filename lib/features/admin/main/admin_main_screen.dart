import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/const/app_colors.dart';
import 'package:top_talent_agency/features/admin/alerts/admin_alert_screen.dart';
import 'package:top_talent_agency/features/admin/home/admin_home_screen.dart';
import 'package:top_talent_agency/features/admin/managers/admin_manager_screen.dart';
import 'package:top_talent_agency/features/admin/setting/admin_setting_screen.dart';
import 'package:top_talent_agency/features/admin/targets/admin_target_screen.dart';

class AdminMainScreen extends StatefulWidget {
  const AdminMainScreen({super.key});

  @override
  State<AdminMainScreen> createState() => _AdminMainScreenState();
}

class _AdminMainScreenState extends State<AdminMainScreen> {
  int selectedIndex = 2;

  // -------------------- Screen list --------------------
  final List<Widget> screens = [
    AdminManagerScreen(),
    AdminTargetScreen(),
    AdminHomeScreen(),
    AdminAlertScreen(),
    AdminSettingScreen(),
  ];
  // ---------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // ---- Center Button ----
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 20), // move FAB 10 pixels down
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: selectedIndex == 2
                ? AppColors.focusFlotingButtonColor
                : null,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: FloatingActionButton(
              backgroundColor: AppColors.flotingButtonColor,
              onPressed: () {
                setState(() => selectedIndex = 2);
              },
              shape: const CircleBorder(),
              child: const Icon(
                Icons.home,
                size: 32,
                color: AppColors.focusIconColor,
              ),
            ),
          ),
        ),
      ),

      // ---- Bottom Bar ----
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        color: Color(0xFF0D1B2A),
        notchMargin: 8,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.person, "Managers", 0),
              _buildNavItem(Icons.track_changes, "Targets", 1),

              const SizedBox(width: 60), // space for center button

              _buildNavItem(Icons.notifications, "Alerts", 3),
              _buildNavItem(Icons.settings, "More", 4),
            ],
          ),
        ),
      ),

      body: screens[selectedIndex],
    );
  }

  // ------- Helper for nav item -------
  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => setState(() => selectedIndex = index),
      child: SizedBox(
        height: 70,
        width: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.white70,
              size: 26,
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.white70,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
