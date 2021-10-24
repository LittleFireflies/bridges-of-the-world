import 'package:bridges_of_the_world/colors.dart';
import 'package:bridges_of_the_world/models/attraction_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final AttractionModel selectedAttraction;

  const DetailsPage({Key? key, required this.selectedAttraction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(selectedAttraction.imgPath!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
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
                  selectedAttraction.name!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  selectedAttraction.location!,
                  style: const TextStyle(color: mainYellow),
                ),
                const SizedBox(height: 16),
                Text(
                  selectedAttraction.description!,
                  style: TextStyle(color: Colors.white.withOpacity(0.7)),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: const Text(
                        'View Comments',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: mainYellow,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      child: const Text('Use Itinerary'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: mainYellow),
            title: const Center(
              child: Icon(Icons.airplanemode_on),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
