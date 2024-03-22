import 'package:flutter/material.dart';
import 'package:flutter_application_1/on_going_screens/ongoing_screen1.dart';
import 'package:flutter_application_1/on_going_screens/ongoing_screen2.dart';
import 'package:flutter_application_1/on_going_screens/ongoing_screen3.dart';
import 'package:flutter_application_1/on_going_screens/ongoing_screen4.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ongoingscreens extends StatefulWidget {
  const Ongoingscreens({super.key});

  @override
    @override
  State<Ongoingscreens> createState() => _OngoingscreensState();
}

class _OngoingscreensState extends State<Ongoingscreens> {
  final PageController _controller = PageController();
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_handlePageChange);
  }

  @override
  void dispose() {
    _controller.removeListener(_handlePageChange);
    _controller.dispose();
    super.dispose();
  }

  void _handlePageChange() {
    setState(() {
      _currentPageIndex = _controller.page?.round() ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              OngoingScreen1(),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _controller.previousPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text('Back'),
                        ),
                        SmoothPageIndicator(
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
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text('Skip'),
                        ),
                      ],
                    ),
                  ),
                  if (_currentPageIndex != 4) // Hide button when on SignUp page
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Positioned(
                        child: ElevatedButton(
                          onPressed: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(15),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
