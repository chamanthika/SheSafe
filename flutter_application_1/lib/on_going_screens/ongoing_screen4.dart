import 'package:flutter/material.dart';

class OngoingScreen4 extends StatelessWidget {
  const OngoingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 79, 116),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  top: 150,
                  left: 100,
                  child: Image.asset(
                    'assets/images/Picture4.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                const Text(
                  'Make a Complaint',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(height: 20),
                const Text(
                  ' Stand up for women’s rights by lodging \n complaints directly to the Ministry of \n Women and Child Affairs through our \n app. Your courageous actions contribute \n to the advancement of \n protection of women',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
