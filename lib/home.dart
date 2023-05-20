import 'package:flutter/material.dart';

class CinemaApp extends StatelessWidget {
  const CinemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        body: Center(
          child: Text('Cinema por Menos',
              style: TextStyle(
                  fontSize: 42, fontFamily: 'Roboto', color: Colors.white)),
        ),
      ),
    );
  }
}
