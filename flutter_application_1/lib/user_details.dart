import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  String? _selectedProvince; // Variable to hold the selected province value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/she.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20), // Adjust the spacing between the image and the rectangles
            Container(
              width: 350,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink), // Add border to the container
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your phone number'),
                ],
              ),
            ),

            SizedBox(height: 10), // Adjust the spacing between the rectangles
            Container(
              width: 350, // Adjust the width of the container
              padding: EdgeInsets.all(15), // Adjust the padding of the container
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink), // Add border to the container
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your name'),
                ],
              ),
            ),

            SizedBox(height: 10), // Adjust the spacing between the rectangles
            Container(
              width: 350, // Adjust the width of the container
              padding: EdgeInsets.all(15), // Adjust the padding of the container
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink), // Add border to the container
              ),
              child: DropdownButton<String>(
                hint: Text(
                  'Select your Province',
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
                dropdownColor: Colors.white, // Set the dropdown background color
                icon: Icon(Icons.arrow_drop_down,color: Colors.black), // Set the dropdown icon
                iconSize: 36,
                isExpanded: true,
                value: _selectedProvince, // Set the selected value
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedProvince = newValue; // Update the selected value
                  });
                },

                 underline: SizedBox(), // Remove the default underline   
                items: <String>[

                  'Select your Province',
                  'Western Province',
                  'Central Province',
                  'Southern Province',
                  'Northern Province',
                  'Eastern Province',
                  'North Western Province',
                  'North Central Province',
                  'Uva Province',
                  'Sabaragamuwa Province'
                ] // Define dropdown items
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),

            SizedBox(height: 10), // Adjust the spacing between the rectangles
            Container(
              width: 350, // Adjust the width of the container
              padding: EdgeInsets.all(15), // Adjust the padding of the container
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink), // Add border to the container
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your address'),
                ],
              ),
            ),

            SizedBox(height: 20), // Adjust the spacing between the rectangles and the button
            SizedBox(
              width: 150, // Adjust the width of the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Submit'),
                    Icon(Icons.arrow_forward),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Adjust the padding
                  textStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
