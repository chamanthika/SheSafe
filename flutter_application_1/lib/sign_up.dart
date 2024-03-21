import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_account.dart';



class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 167, 116),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  top:150,
                  left: 100,
                  child: Image.asset(
                    'assets/images/Picture5.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  'Emergency Police \n Assistance',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 20),
                Text(
                  'Effortlessly connect with the nearby\n police station by simply tapping the ‘Call Police’ \n option in the app, ensuring \n prompt assistance in any emergency.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewAccount()),
                    );
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Already a member',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0, color: Colors.pink),
                ),
                 SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewAccount()),
                    );
                  },
                  child: Text('Sign In'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
