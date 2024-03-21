import 'package:flutter/material.dart';
import 'package:flutter_application_1/ongoing_screen1.dart';
import 'package:flutter_application_1/ongoing_screen2.dart';
import 'package:flutter_application_1/ongoing_screen3.dart';
import 'package:flutter_application_1/ongoing_screen4.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ongoingscreens extends StatefulWidget {
  const Ongoingscreens({Key? key}) : super(key: key);

  @override
  _OngoingscreensState createState() => _OngoingscreensState();
}

class _OngoingscreensState extends State<Ongoingscreens> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OngoingScreen1(goBack: () {  },),
              OngoingScreen2(),
              OngoingScreen3(),
              OngoingScreen4(),
              SignUp(),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text('Back'),
                  ),
                  SmoothPageIndicator(
                    // Fix SmoothPageIndicator typo
                    controller: _controller,
                    count: 5,
                    effect: const SlideEffect(
                        radius: 2.0,
                        dotColor: Colors.white,
                        activeDotColor: Colors.yellow),
                  ),
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text('Skip'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20, // Adjust the position as needed
            left: 0, // Adjust the position as needed
            right: 0, // Adjust the position as needed
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the next page
                _controller.nextPage(
                    duration: Duration(microseconds: 500),
                    curve: Curves.easeIn);
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.white, // <-- Button color
                foregroundColor: Colors.white, // <-- Splash color
              ),
              child: const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
