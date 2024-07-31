import 'package:flutter/material.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/common/theme/theme.dart';

class BotNavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BotNavBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: semiBoldText14,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: themeData.primaryColorDark,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
            size: 24,
          ),
          activeIcon: Icon(
            Icons.home,
            size: 24,
            color: themeData.primaryColor,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home_repair_service,
            size: 24,
          ),
          activeIcon: Icon(
            Icons.home_repair_service,
            size: 24,
            color: themeData.primaryColor,
          ),
          label: 'Layanan',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.chat_rounded,
            size: 24,
          ),
          activeIcon: Icon(
            Icons.chat_rounded,
            size: 24,
            color: themeData.primaryColor,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.history,
            size: 24,
          ),
          activeIcon: Icon(
            Icons.history,
            size: 24,
            color: themeData.primaryColor,
          ),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.person,
            size: 24,
          ),
          activeIcon: Icon(
            Icons.person,
            size: 24,
            color: themeData.primaryColor,
          ),
          label: 'Profil',
        ),
      ],
    );
  }
}
