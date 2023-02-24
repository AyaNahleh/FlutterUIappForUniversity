import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/data.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (value) {},
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: MyColors.white,
      unselectedItemColor: MyColors.mediumGray,
      items: List.generate(4, (index) {
        var navBtn = Data.navigationButtons[index];
        return BottomNavigationBarItem(
            backgroundColor: MyColors.darkBlue,
            icon: navBtn["active_icon"],
            label: navBtn["label"]);
      }),
    );
  }
}
