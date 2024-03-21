import 'package:flutter/material.dart';


class OngoingScreen1 extends StatelessWidget {
  const OngoingScreen1({Key? key, required Null Function() goBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
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
                    'assets/images/Picture1.jpg', // Replace 'your_image.png' with your image path
                    width: 200, // Adjust the width as needed
                    height: 200, // Adjust the height as needed
                  ),
                ),
                Text(
                  'Audio Recording',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20),
                Text(
                  'Activate audio recording for added \n security. Capture details discreetly \n during emergencies.Your safety \n matters, and having audio evidence can \n provide peace of mind.',
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


