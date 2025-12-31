import 'package:flutter/material.dart';  

class Reminders extends StatelessWidget {
  const Reminders ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminders '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);

          },
          child: const Text('Home'),
        ),
      ),
    );
  }
}