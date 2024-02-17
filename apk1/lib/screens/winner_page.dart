import 'package:flutter/material.dart';

import 'community_page.dart';

class WinnerPage extends StatelessWidget {
  const WinnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Winners',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.lightBlue[100], // Set the background color
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Winner of the Week:',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            const SizedBox(height: 10),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/sir.jpg'),
            ),
            const SizedBox(height: 10),
            Text(
              'Name: S Arzoo',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 20),
            Text(
              'Achievement: Top Scorer in Military Strategy Quiz',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
