import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _isChecked = false;

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150, // Adjust size as needed
                    width: 150,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('Username or Email'),
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    fillColor: Color(0x4DD9D9D9),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Space between fields
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text('Password'),
                ),

                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible, // Toggle visibility
                  decoration: InputDecoration(
                    fillColor: const Color(0x4DD9D9D9),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible =
                              !_isPasswordVisible; // Toggle the visibility
                        });
                      },
                    ),
                  ),
                ),

                Row(
                  children: [
                    Checkbox(
                      value:
                          _isChecked, // Boolean value that tracks whether the checkbox is checked
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: const Color(0xFF8C52FF),
                    ),
                    const Text(
                        "Remember me"), // Text for the "Remember me" label
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(6.0),
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
                        child: const Text("Login"),
                      ),
                    ),
                  ),
                ),
                // adding sign up text
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: "Don't have an account? ",
                            style: TextStyle(
                                color: Colors.black), // Default text color
                          ),

                          TextSpan(
                            text: "Sign up",
                            style: const TextStyle(
                              color: Color(0xFF8C52FF),
                              // Blue color for the "Sign up" link
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the Sign Up page
                                Navigator.pushNamed(
                                    context, '/registrationPage');
                              },
                          ),
                          // adding continue

                          //
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    height: 20), // Spacing between the "OR" and the button

                SizedBox(
                  width:
                      double.infinity, // Make the button stretch horizontally
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // White background
                      foregroundColor: Colors.black, // Black text color
                      side: const BorderSide(
                          color: Color(0xFF8C52FF)), // Border for the button
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Rounded edges
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15), // Adjust padding
                    ),
                    icon: Image.asset(
                      'assets/images/google-logo.jpeg', // Path to your Google logo
                      height: 20,
                    ),
                    label: const Text("Continue with Google"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
