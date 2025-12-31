import 'package:flutter/material.dart';  

class Gallery extends StatelessWidget {
  const  Gallery ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
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