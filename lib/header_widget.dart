import 'package:bridges_of_the_world/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Where do you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'want to go?',
                style: TextStyle(
                  color: mainYellow,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: lightGray,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 8),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
