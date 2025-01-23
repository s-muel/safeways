// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // adding media query for responsiveness
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 4,
              width: double.infinity,
              child: Image.asset(
                'assets/images/vehicles.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Container(
                color: Colors.grey[100], // Light gray background
                alignment: Alignment.topLeft, // Center align the text
                padding: const EdgeInsets.all(
                    15), // Optional padding for better spacing
                child: const Text(
                  'Available Vehicles',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Select any of the available vehicles',
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // Here am using routes
                      Navigator.pushNamed(context, '/busesPage');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF8C52FF),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text("Buses"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // Here am using routes
                      Navigator.pushNamed(context, '/landingPage');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF8C52FF),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text("Trucks"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      // Here am using routes
                      Navigator.pushNamed(context, '/landingPage');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF8C52FF),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text("Tricycles"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
