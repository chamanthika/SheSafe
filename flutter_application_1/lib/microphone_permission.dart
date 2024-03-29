
import 'dart:ui';

import 'package:flutter/material.dart';

class MicrophonePermission extends StatelessWidget {
  const MicrophonePermission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/user1.png'), // Provide correct image path
                            fit: BoxFit.cover, // Adjust as needed
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),

                      const Text(
                        "Hello Seli",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(
                      height:
                          20), // Spacer between the Row and the centered Container
                  Center(
                    child:  Container(
                      height: 170,
                      width: 170,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sos.png'),
                          fit: BoxFit.cover, // Adjust as needed
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(
                      height:
                          50), // Spacer between the centered Container and the Row of images
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5), // Adjust the horizontal padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/callpolice.png', // Provide correct image path
                              height: 80,
                              width: 80, // Adjust width to 80
                              fit: BoxFit.cover, // Adjust as needed
                            ),

                            const SizedBox(height: 5),

                            const Text(
                              'Call Police',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/alerttext.png', // Provide correct image path
                              height: 80,
                              width: 80, // Adjust width to 80
                              fit: BoxFit.cover, // Adjust as needed
                            ),

                           const  SizedBox(height: 5),

                            const Text(
                              'Alert Text',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/audio.png', // Provide correct image path
                              height: 80,
                              width: 80, // Adjust width to 80
                              fit: BoxFit.cover, // Adjust as needed
                            ),

                           const  SizedBox(height: 5),

                           const  Text(
                              'Audio Recording',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40), // Spacer between the rows of images
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5), // Adjust the horizontal padding
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/fakecall.png', // Provide correct image path
                              height: 80,
                              width: 80, // Adjust width to 80
                              fit: BoxFit.cover, // Adjust as needed
                            ),

                            const SizedBox(height: 5),

                            const Text(
                              'Fake Call',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/complaint.png', // Provide correct image path
                              height: 80,
                              width: 80, // Adjust width to 80
                              fit: BoxFit.cover, // Adjust as needed
                            ),

                            const SizedBox(height: 5),

                           const  Text(
                              'Make a Complaint',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(
                              'assets/images/emergency.png', // Provide correct image path
                              height: 80,
                              width: 80, // Adjust width to 80
                              fit: BoxFit.cover, // Adjust as needed
                            ),

                            const SizedBox(height: 5),

                            const Text(
                              'Contact List',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20), // Adjust the horizontal padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/homelogo.png',
                          height: 35,
                          width: 30,
                          fit: BoxFit.cover,
                        ),

                        const SizedBox(height: 5),

                        const Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/safetytipslogo.png',
                          height: 35,
                          width: 30,
                          fit: BoxFit.cover,
                        ),

                        const SizedBox(height: 5),
                        const Text(
                          'Safety Tips',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
           // Blurred background
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.transparent.withOpacity(0.3),// Adjust opacity as needed
              
            ),
          ),

          Positioned.fill(
            child: Center(
              child: AlertDialog(
                backgroundColor:const  Color.fromARGB(255, 233, 165, 187),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.mic,
                      size: 50,
                      color: Colors.black,
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'SheSafe would like to access your microphone.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),

                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink, // Set button color to pink
                          ),
                          onPressed: () {
                            // Navigate to Example page when Allow button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>const  MicrophonePermission()),
                            );
                          },

                          child:const  Text(
                            'Allow',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ),

                        const SizedBox(width: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink, // Set button color to pink
                          ),
                          onPressed: () {
                            // Navigate to Example page when Deny button is pressed
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>const MicrophonePermission()),
                            );
                          },

                          child:const  Text(
                            'Deny',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


