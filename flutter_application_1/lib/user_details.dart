import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  String? _selectedProvince;
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
            const SizedBox(
                height:
                    20), // Adjust the spacing between the image and the rectangles
            Container(
              width: 350,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.pink), // Add border to the container
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your phone number'),
                ],
              ),
            ),

            const SizedBox(
                height: 10), // Adjust the spacing between the rectangles
            Container(
              width: 350, // Adjust the width of the container
              padding: const EdgeInsets.all(
                  15), // Adjust the padding of the container
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.pink), // Add border to the container
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your name'),
                ],
              ),
            ),

            const SizedBox(
                height: 10), // Adjust the spacing between the rectangles
            Container(
              width: 350, // Adjust the width of the container
              padding: const EdgeInsets.all(
                  15), // Adjust the padding of the container
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.pink), // Add border to the container
              ),
              child: DropdownButton<String>(
                hint: const Text(
                  'Select your Province',
                  style: TextStyle(fontStyle: FontStyle.normal),
                ),
                dropdownColor:
                    Colors.white, // Set the dropdown background color
                icon: const Icon(Icons.arrow_drop_down,
                    color: Colors.black), // Set the dropdown icon
                iconSize: 36,
                isExpanded: true,
                value: _selectedProvince, // Set the selected value
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedProvince = newValue; // Update the selected value
                  });
                },

                underline: const SizedBox(), // Remove the default underline
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

            const SizedBox(
                height: 10), // Adjust the spacing between the rectangles
            Container(
              width: 350, // Adjust the width of the container
              padding: const EdgeInsets.all(
                  15), // Adjust the padding of the container
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.pink), // Add border to the container
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Enter your address'),
                ],
              ),
            ),

            const SizedBox(
                height:
                    20), // Adjust the spacing between the rectangles and the button
            SizedBox(
              width: 150, // Adjust the width of the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10), // Adjust the padding
                  textStyle: const TextStyle(fontSize: 15),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Submit'),
                    Icon(Icons.arrow_forward),
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
