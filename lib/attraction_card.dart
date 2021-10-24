import 'package:bridges_of_the_world/colors.dart';
import 'package:bridges_of_the_world/models/attraction_model.dart';
import 'package:flutter/material.dart';

class AttractionCard extends StatelessWidget {
  AttractionModel attractionModel;

  AttractionCard({Key? key, required this.attractionModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(attractionModel.imgPath ?? '-'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    attractionModel.name!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    attractionModel.location!,
                    style: const TextStyle(color: mainYellow),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
