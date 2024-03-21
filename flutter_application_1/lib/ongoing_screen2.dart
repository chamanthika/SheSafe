import 'package:flutter/material.dart';


class OngoingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 147, 210),
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
                    'assets/images/Picture2.jpg', // Replace 'your_image.png' with your image path
                    width: 200, // Adjust the width as needed
                    height: 200, // Adjust the height as needed
                  ),
                ),
                Text(
                  'Emergency call \n and Location sharing',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20),
                Text(
                  'Activate the SOS button for \n immediate assistance. Connect \n  with emergency contacts and \n share your location \n  simultaneously for swift response.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
