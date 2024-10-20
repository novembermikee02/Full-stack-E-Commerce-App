import 'package:ecommerce_frontend_backend/features/tabs/home_tab/home_screen.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const Placeholder(),
    Container(),
    const Placeholder(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.home_2_copy,
              size: 32,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.notification_bing_copy,
              size: 32,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.receipt_2_1_copy,
              size: 32,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Iconsax.profile_add_copy,
              size: 32,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        backgroundColor: whiteColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
