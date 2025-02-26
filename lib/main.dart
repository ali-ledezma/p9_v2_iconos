import 'package:flutter/material.dart';

void main() => runApp(MisIconosApp());

class MisIconosApp extends StatelessWidget {
  const MisIconosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("diego ali ledezma carbajal"),
          titleTextStyle: TextStyle(color: Color(0xff083c49), fontSize: 20),
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Column(
            // Main Column to stack rows vertically
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // First horizontal row of icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildIconWithSubtitle(Icons.login, "Login", Colors.pink),
                  _buildIconWithSubtitle(Icons.start, "Start", Colors.green),
                  _buildIconWithSubtitle(Icons.person, "Person", Colors.blue),
                ],
              ),
              SizedBox(height: 20), // Space between rows
              // Second horizontal row of icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildIconWithSubtitle(Icons.home, "Home", Colors.orange),
                  _buildIconWithSubtitle(
                      Icons.settings, "Settings", Colors.grey),
                  _buildIconWithSubtitle(
                      Icons.favorite, "Favorite", Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget reutilizable para crear un ícono con su subtítulo
  Widget _buildIconWithSubtitle(
      IconData iconData, String subtitle, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0, vertical: 8.0), //added horizontal padding
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            color: color,
            size: 30.0,
          ),
          Text(subtitle),
        ],
      ),
    );
  }
}
