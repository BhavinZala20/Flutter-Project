import 'package:flutter/material.dart';

class ExamInformationPage extends StatelessWidget {
  const ExamInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Get More Information',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.lightBlue[100], // Set the background color
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Defense Exam Details:',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ExamDetailItem(
                          title: 'Date:',
                          value: 'January 1, 2024',
                          color: Colors.teal),
                      ExamDetailItem(
                          title: 'Location:',
                          value: 'TBD',
                          color: Colors.orange),
                      ExamDetailItem(
                          title: 'Subjects:',
                          value: 'Military Strategy, History, Physical Fitness',
                          color: Colors.purple),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press (e.g., navigate to exam preparation resources)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text('Exam Preparation Resources',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.orange[100], // Set the background color
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      ExamDetailItem(
                          title: 'Date:',
                          value: 'February 1, 2024',
                          color: Colors.teal),
                      ExamDetailItem(
                          title: 'Location:',
                          value: 'TBD',
                          color: Colors.orange),
                      ExamDetailItem(
                          title: 'Subjects:',
                          value: 'Military Strategy, History, Physical Fitness',
                          color: Colors.purple),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press (e.g., navigate to exam preparation resources)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text('Exam Preparation Resources',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.limeAccent[100], // Set the background color
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      ExamDetailItem(
                          title: 'Date:',
                          value: 'February 1, 2024',
                          color: Colors.teal),
                      ExamDetailItem(
                          title: 'Location:',
                          value: 'TBD',
                          color: Colors.orange),
                      ExamDetailItem(
                          title: 'Subjects:',
                          value: 'Military Strategy, History, Physical Fitness',
                          color: Colors.purple),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press (e.g., navigate to exam preparation resources)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text('Exam Preparation Resources',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.red[100], // Set the background color
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      ExamDetailItem(
                          title: 'Date:',
                          value: 'March 1, 2024',
                          color: Colors.teal),
                      ExamDetailItem(
                          title: 'Location:',
                          value: 'TBD',
                          color: Colors.orange),
                      ExamDetailItem(
                          title: 'Subjects:',
                          value: 'Military Strategy, History, Physical Fitness',
                          color: Colors.purple),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press (e.g., navigate to exam preparation resources)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text('Exam Preparation Resources',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.deepPurple[100], // Set the background color
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      ExamDetailItem(
                          title: 'Date:',
                          value: 'April 1, 2024',
                          color: Colors.teal),
                      ExamDetailItem(
                          title: 'Location:',
                          value: 'Rajkot',
                          color: Colors.orange),
                      ExamDetailItem(
                          title: 'Subjects:',
                          value: 'Military Strategy, History, Physical Fitness',
                          color: Colors.purple),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle button press (e.g., navigate to exam preparation resources)
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        child: Text('Exam Preparation Resources',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExamDetailItem extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const ExamDetailItem({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
          ),
        ),
        Expanded(
          // Use Expanded to allow the text to take available space
          child: Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          ),
        ),
      ],
    );
  }
}
