import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Image.asset('assets/images/logo.jpg'),
            )),
            //
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Here am using routes
                    Navigator.pushNamed(context, '/loginPage');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF8C52FF),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  child: const Text("Get Started"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
