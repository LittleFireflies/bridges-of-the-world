import 'package:bridges_of_the_world/colors.dart';
import 'package:bridges_of_the_world/landing_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LandingPage()));
    });

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: mainYellow,
        ),
        const Icon(
          Icons.airplanemode_on,
          color: Colors.black,
          size: 80,
        ),
        SizedBox(
          width: 160,
          height: 160,
          child: CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.2)),
            strokeWidth: 8,
          ),
        ),
      ],
    );
  }
}
