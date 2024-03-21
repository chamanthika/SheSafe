import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_details.dart';

class NewAccount extends StatelessWidget {
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
                Text(
                  'Create new account',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0, color: Colors.pink),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email_outlined, color: Colors.pink),
                        ),
                      ),
                      
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.lock_outline, color: Colors.pink),
                        ),
                      ),

                      
                         SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value:false,
                            onChanged: (v){},
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            
                            ),
                            side: MaterialStateBorderSide.resolveWith((states) =>BorderSide(width: 1.0,color:Colors.pink)),
                            
                            ),
                          
                          SizedBox(width: 10),
                          Text('Remember me', style: TextStyle(color: Colors.pink)),
                        ],
                      ),
                       

                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => UserDetails()),
                          );
                        },
                        child: Text('Create account'),
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
          ),
        ],
      ),
    );
  }
}
