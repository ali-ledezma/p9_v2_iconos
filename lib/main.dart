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
          title: Column( // Use a Column to stack the title and subtitle
            mainAxisAlignment: MainAxisAlignment.center, // Center the Column's content
            children: <Widget>[
              Text("diego ali ledezma carbajal"),
              Text("diego ledezma 22308051281229",
                  style: TextStyle(fontSize: 14)), // Smaller font for subtitle
            ],
          ),
          titleTextStyle: TextStyle(color: Color(0xff083c49), fontSize: 20),
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Column( // Use a Column to stack the text and icons
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Removed the original Text widget from the Row
              // The text is now in the AppBar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Columna izquierda de íconos
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildIconWithSubtitle(Icons.login, "Login", Colors.pink),
                      _buildIconWithSubtitle(Icons.start, "Start", Colors.green),
                      _buildIconWithSubtitle(Icons.person, "Person", Colors.blue),
                    ],
                  ),
                  SizedBox(width: 40), // Espacio entre las columnas
                  // Columna derecha de íconos
                  Column(
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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            color: color,
            size: 30.0,
          ),