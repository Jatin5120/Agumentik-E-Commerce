import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/components.dart';
import 'package:shop_app/controllers/controllers.dart';

import 'dashboard_screens.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const String routeName = '/dashboard';

  static final List<Widget> _screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  static final NavController _navController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => _screens[_navController.currentIndex],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
