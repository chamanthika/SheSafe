import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the homepage.dart file

class Soscall extends StatelessWidget {
  const Soscall({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink[50], // Set screen color to light pink
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 70), // Adjust as needed to move the image and text down
              Image.asset(
                'assets/images/Mom.png',
                height: 120,
                width: 120,
              ),
              SizedBox(height: 20), // Add space between the image and the text
              Text(
                'Calling...',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10), // Add space between the text and the additional text
              Text(
                'Mom',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 120), // Add space between the additional text and the row of images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjusts space evenly between the images
                children: [
                  Image.asset(
                    'assets/images/speaker.png',
                    height: 80,
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/keypad.png',
                    height: 80,
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/microphone.png',
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
              SizedBox(height: 90), // Add space between the row of images and the end call image
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homepage()), // Navigate to homepage.dart
                  );
                },
                child: Image.asset(
                  'assets/images/endcall.png',
                  height: 80,
                  width: 80,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

