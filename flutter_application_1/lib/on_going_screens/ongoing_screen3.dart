import 'package:flutter/material.dart';

class OngoingScreen3 extends StatelessWidget {
  const OngoingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 94, 141, 179),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  top: 150, // Adjust the position as needed
                  left: 100, // Adjust the position as needed
                  child: Image.asset(
                    'assets/images/Picture3.jpg', // Replace 'your_image.png' with your image path
                    width: 200, // Adjust the width as needed
                    height: 200, // Adjust the height as needed
                  ),
                ),
                const Text(
                  'Fake Calls',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(height: 20),
                const Text(
                  'With our fake call feature, you can \n simulate an incoming call to discreetly \n exit uncomfortable situations or deter \n potential threats. Simply activate the \n feature, and your phone will ring as if \n receiving a genuine call',
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
