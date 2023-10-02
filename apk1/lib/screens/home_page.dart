import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Main Content'),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home', // Fixed the label
          ),
          NavigationDestination(
            icon: Icon(Icons.quiz),
            label: 'Quizzes', // Fixed the label
          ),
          NavigationDestination(
            icon: Icon(Icons.info),
            label: 'Information about Exam',
          ),
          NavigationDestination(
            icon: Icon(Icons.celebration),
            label: 'WOW',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Community',
          ),
        ],
      ),
    );
  }
}
