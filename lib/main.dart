import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Серега лох',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int score = 0;

  void incrementScore() {
    setState(() {
      score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Серега лох'),
      ),
      body: GestureDetector(
        onTap: incrementScore,
        child: Container(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Текущий размер:',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  '$score',
                  style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Тапай чтобы увеличить размер своего ХУЯ!',
                  style: TextStyle(fontSize: 20, color: Colors.white70),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
