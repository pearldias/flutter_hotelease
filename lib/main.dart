import 'package:flutter/material.dart';
import 'package:yttrial/screens/employee_login_page.dart'; // Import Employee Login Page
import 'package:yttrial/screens/signup_page.dart'; // Import Signup Page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Signup',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', // Set initial route to login page
      routes: {
        '/login': (context) => const EmployeeLoginPage(), // Login Page
        '/signup': (context) => const SignupPage(), // Signup Page
      },
    );
  }
}
