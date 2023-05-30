import 'package:flutter/material.dart';

void main() {
  runApp(const Score());
}

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ScoreAPp",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
              child: Text(
            "Score IS",
            style: TextStyle(
                color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            number.toString(),
            style: TextStyle(
                color: Colors.green, fontSize: 85, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: increaseNumber,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Increase')),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  onPressed: decreaseNumber,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('Decrease')),
            ],
          )
        ],
      ),
    );
  }
}
