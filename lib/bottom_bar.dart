import 'package:bridges_of_the_world/models/bottom_bar_model.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final List<BottomBarModel> _bottomBarListItems = [
    BottomBarModel(icon: Icons.explore_outlined, isSelected: true),
    BottomBarModel(icon: Icons.favorite_border, isSelected: false),
    BottomBarModel(icon: Icons.comment_outlined, isSelected: false),
    BottomBarModel(icon: Icons.account_circle_outlined, isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _bottomBarListItems.length,
          (index) {
            final item = _bottomBarListItems[index];

            return IconButton(
              icon: Icon(
                item.icon,
                color: item.isSelected ? mainYellow : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  for (var element in _bottomBarListItems) {
                    element.isSelected = element == item;
                  }
                });
              },
            );
          },
        ),
      ),
    );
  }
}
