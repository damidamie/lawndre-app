import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:laundry_app/app/modules/home/controllers/bottom_nav_bar_controller.dart';
import 'package:laundry_app/app/modules/home/views/pages/home_view.dart';
import 'package:laundry_app/app/modules/home/views/pages/profile_view.dart';

class BottomNavBarView extends StatelessWidget {
  final BottomNavBarController bottomNavBarController = Get.put(BottomNavBarController());

  final List<Widget> pages= [
    const HomeView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: bottomNavBarController.selectedIndex.value,
            onTap: (index) {
              bottomNavBarController.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.swap_horiz),
                label: 'Transaksi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Histori',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user),
                label: 'Profil',
              ),
            ]
      )
    );
  }
}