import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0; // Start from the first question
  List<Question> questions = [
    Question(
      text: 'What is the capital of France?',
      choices: ['Paris', 'Berlin', 'Madrid', 'London'],
      correctChoice: 'Paris',
    ),
    Question(
      text: 'What is the largest planet in our solar system?',
      choices: ['Earth', 'Jupiter', 'Mars', 'Venus'],
      correctChoice: 'Jupiter',
    ),
    Question(
      text: 'Which gas is most abundant in the Earth\'s atmosphere?',
      choices: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
      correctChoice: 'Nitrogen',
    ),
    Question(
      text: 'What is the currency of Japan?',
      choices: ['Won', 'Yen', 'Ringgit', 'Dollar'],
      correctChoice: 'Yen',
    ),
    Question(
      text: 'Who wrote the play "Romeo and Juliet"?',
      choices: [
        'William Shakespeare',
        'Jane Austen',
        'Charles Dickens',
        'Mark Twain'
      ],
      correctChoice: 'William Shakespeare',
    ),
    // Add more questions here
  ];
  List<bool?> userAnswers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Quizzes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildQuizBody(),
      ),
    );
  }

  Widget buildQuizBody() {
    if (currentQuestionIndex < questions.length) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Question ${currentQuestionIndex + 1}: ${questions[currentQuestionIndex].text}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Column(
            children: List.generate(
              questions[currentQuestionIndex].choices.length,
              (index) => buildChoiceButton(index),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: previousQuestion,
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey, // Adjust button color
                ),
                child: Text('Previous Question',
                    style: TextStyle(color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: confirmAnswer,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Adjust button color
                ),
                child: Text('Next Question',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      );
    } else {
      return buildResultPage();
    }
  }

  Widget buildChoiceButton(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            userAnswers[currentQuestionIndex] =
                index == questions[currentQuestionIndex].correctChoiceIndex;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.lightBlueAccent, // Adjust button color
        ),
        child: Text(questions[currentQuestionIndex].choices[index]),
      ),
    );
  }

  void confirmAnswer() {
    if (userAnswers.length <= currentQuestionIndex ||
        userAnswers[currentQuestionIndex] == null) {
      // User hasn't selected an answer
      return;
    }

    setState(() {
      currentQuestionIndex++;
    });
  }

  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  Widget buildResultPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Quiz Result',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        SizedBox(height: 20),
        Column(
          children: List.generate(
            questions.length,
            (index) => buildResultCard(index),
          ),
        ),
      ],
    );
  }

  Widget buildResultCard(int index) {
    return Card(
      margin: EdgeInsets.all(8),
      color: userAnswers[index] == true ? Colors.greenAccent : Colors.redAccent,
      child: ListTile(
        title: Text('Question ${index + 1}: ${questions[index].text}'),
        subtitle: Text(userAnswers[index] == true ? 'Correct' : 'Wrong',
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Question {
  final String text;
  final List<String> choices;
  final String correctChoice;
  int get correctChoiceIndex => choices.indexOf(correctChoice);

  Question({
    required this.text,
    required this.choices,
    required this.correctChoice,
  });
}
