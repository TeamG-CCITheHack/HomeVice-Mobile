import 'package:flutter/material.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/common/theme/theme.dart';

class PBotNavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const PBotNavBarWidget({
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
            Icons.dashboard,
            size: 24,
          ),
          activeIcon: Icon(
            Icons.dashboard,
            size: 24,
            color: themeData.primaryColor,
          ),
          label: 'Beranda',
        ),
      ],
    );
  }
}
