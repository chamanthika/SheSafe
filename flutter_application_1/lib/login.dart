import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/microphone_permission.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void signIn() async {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          )
          .then(
            (value) => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MicrophonePermission()),
            ),
          );
    }

    return Scaffold(
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
                    'assets/images/she.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, color: Colors.pink),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          prefixIcon:
                              Icon(Icons.email_outlined, color: Colors.pink),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          prefixIcon:
                              Icon(Icons.lock_outline, color: Colors.pink),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (v) {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 1.0, color: Colors.pink)),
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(color: Colors.pink),
                              ),
                            ],
                          ),
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.pink),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: signIn,
                        child: Text('SIGN-IN'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 60, vertical: 10),
                          textStyle: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'or connect using',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.0, color: Colors.pink),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/Googlelogo.png",
                            height: 40,
                          ),
                          Image.asset(
                            "assets/images/facebooklogo2.png",
                            height: 40,
                          ),
                          Image.asset(
                            "assets/images/instagramlogo1.png",
                            height: 40,
                          ),
                        ],
                      ),
                    ],
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