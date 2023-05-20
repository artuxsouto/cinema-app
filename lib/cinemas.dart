import 'package:flutter/material.dart';

class CinemasWidget extends StatelessWidget {
  const CinemasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        title: const Text('Uberlândia'),
      ),
    );
  }
}
