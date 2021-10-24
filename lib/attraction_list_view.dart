import 'package:bridges_of_the_world/attraction_card.dart';
import 'package:bridges_of_the_world/models/attraction_model.dart';
import 'package:flutter/material.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 8),
        scrollDirection: Axis.horizontal,
        itemCount: attractions.length,
        itemBuilder: (context, index) {
          final currentAttraction = attractions[index];
          return AttractionCard(
            attractionModel: currentAttraction,
          );
        },
      ),
    );
  }
}
