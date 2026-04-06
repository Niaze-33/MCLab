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
      backgroundColor: Colors.grey[300],

      // Floating Button (Nickname)
      floatingActionButton: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.purple],
          ),
        ),
        child: Center(
          child: Text(
            "kaincha", // Nickname
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),

      body: Column(
        children: [

          // Top Bar
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 40),
            color: Colors.tealAccent,
            child: Center(
              child: Text(
                "6th April 2026",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),

          // Row Section
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 80,
                  color: Colors.redAccent,
                  child: Center(
                    child: Text("Roll: 22CSE033"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.green,
                  child: Center(
                    child: Text("O+"), // Blood Group
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.blue,
                  child: Center(
                    child: Text("Jhalakathi"), // District
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 120),

          // Registration Box
          Container(
            width: 250,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text("Reg: 110-033-22"), // Registration
            ),
          ),
        ],
      ),
    );
  }
}
