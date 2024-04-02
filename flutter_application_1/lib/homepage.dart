import 'package:flutter/material.dart';
import 'package:flutter_application_1/Alerttext.dart';
import 'package:flutter_application_1/Complaint.dart';
import 'package:flutter_application_1/Contacts.dart';
import 'package:flutter_application_1/Fakecall.dart';
import 'package:flutter_application_1/Policenot.dart';
import 'package:flutter_application_1/Recording.dart';
import 'package:flutter_application_1/Safetytips.dart';
import 'package:flutter_application_1/Sosnotf.dart';



class homepage extends StatelessWidget {
  const homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                                image: AssetImage('assets/images/user1.png'), // Provide correct image path
                                fit: BoxFit.cover, // Adjust as needed
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Hello Seli",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Spacer between the Row and the centered Container
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Sosnotf()),
                            );
                          },
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/sos.png'), 
                                fit: BoxFit.cover, // Adjust as needed
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 55), // Spacer between the centered Container and the Row of images
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5), // Adjust the horizontal padding
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Policenot()),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/callpolice.png', // Provide correct image path
                                    height: 80,
                                    width: 80, // Adjust width to 80
                                    fit: BoxFit.cover, // Adjust as needed
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Call Police',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Alerttext()),
                                );  // Navigate to alert text screen
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/alerttext.png', // Provide correct image path
                                    height: 80,
                                    width: 80, // Adjust width to 80
                                    fit: BoxFit.cover, // Adjust as needed
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Alert Text',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Recording()),
                                );
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/audio.png', // Provide correct image path
                                    height: 80,
                                    width: 80, // Adjust width to 80
                                    fit: BoxFit.cover, // Adjust as needed
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Audio Recording',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40), // Spacer between the rows of images
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5), // Adjust the horizontal padding
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Fakecall()),
                                ); // Navigate to fake call screen
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/fakecall.png', // Provide correct image path
                                    height: 80,
                                    width: 80, // Adjust width to 80
                                    fit: BoxFit.cover, // Adjust as needed
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Fake Call',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(

                                  onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Complaint()),
                                ); 
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/complaint.png', // Provide correct image path
                                    height: 80,
                                    width: 80, // Adjust width to 80
                                    fit: BoxFit.cover, // Adjust as needed
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    ' Make a Complaint',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Contacts()),
                                );  // Navigate to emergency screen
                              },
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/emergency.png', // Provide correct image path
                                    height: 80,
                                    width: 80, // Adjust width to 80
                                    fit: BoxFit.cover, // Adjust as needed
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Contact List',
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust the horizontal padding
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
                        SizedBox(height: 5),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                     GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Safetytips()),
                                );  
                              },
                    child :Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/safetytipslogo.png',
                          height: 35,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Safety Tips',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                     ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
