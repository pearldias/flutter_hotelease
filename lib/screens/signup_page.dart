import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/emp.jpeg'), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Signup Form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.brown.shade100.withOpacity(
                      0.9), // Slight opacity for better readability
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Start your Journey to Unforgettable Stays',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'CUSTOMER EMAIL',
                        labelStyle: TextStyle(color: Colors.brown),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.brown),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(color: Colors.brown),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'CONFIRM PASSWORD',
                        labelStyle: TextStyle(color: Colors.brown),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Checkbox(
                          value: _termsAccepted,
                          onChanged: (bool? value) {
                            setState(() {
                              _termsAccepted = value ?? false;
                            });
                          },
                          activeColor: Colors.brown,
                        ),
                        const Expanded(
                          child: Text(
                            'I agree to the terms and conditions',
                            style: TextStyle(color: Colors.brown),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        if (_termsAccepted) {
                          // Handle signup logic
                          print('Signup with:');
                          print('Email: ${_emailController.text}');
                          print('Username: ${_usernameController.text}');
                          print('Password: ${_passwordController.text}');
                        } else {
                          // Show an alert to accept terms
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Please accept the terms and conditions.'),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Create Your Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.brown),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to login page
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.brown),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
