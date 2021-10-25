import 'package:bridges_of_the_world/attraction_list_view.dart';
import 'package:bridges_of_the_world/bottom_bar.dart';
import 'package:bridges_of_the_world/colors.dart';
import 'package:bridges_of_the_world/header_widget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: const IconThemeData(color: mainYellow),
        title: const Center(
          child: Icon(Icons.airplanemode_on),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_on_outlined,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: mainYellow,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(16),
          child: const Icon(
            Icons.airplanemode_on,
            size: 80,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryGray, secondaryGray],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderWidget(),
            AttractionListView(),
            BottomBarWidget(),
          ],
        ),
      ),
    );
  }
}
