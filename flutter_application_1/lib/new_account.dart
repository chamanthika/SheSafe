import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_details.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Text(
                  'Create new account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, color: Colors.pink),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                          prefixIcon:
                              Icon(Icons.email_outlined, color: Colors.pink),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                          prefixIcon:
                              Icon(Icons.lock_outline, color: Colors.pink),
                        ),
                      ),
                      const SizedBox(height: 10),
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
                                (states) => const BorderSide(
                                    width: 1.0, color: Colors.pink)),
                          ),
                          const SizedBox(width: 10),
                          const Text('Remember me',
                              style: TextStyle(color: Colors.pink)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserDetails()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 10),
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        child: const Text('Create account'),
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
