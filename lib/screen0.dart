import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('First route'),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            ElevatedButton(
              child: const Text('Second route'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
