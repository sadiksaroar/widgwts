import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF54C6B7), // Match the background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Back button
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  // Handle back navigation
                },
              ),
            ),
          ),

          // Title text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "German phrases",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),

          // Score box
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "190 🏆 29",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 20),

          // Image
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/study_kids.png', // Replace with your actual image path
              width: 250,
            ),
          ),

          SizedBox(height: 20),

          // Subtitle
          Text(
            "Keep practicing",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
