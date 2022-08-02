import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int result = 0;

  TextEditingController firstInput = TextEditingController();
  TextEditingController secondInput = TextEditingController();

  void changeResult(String operation) {
    int firstNum = int.parse(firstInput.text); // позволяет получать целое число из строки
    int secondNum = int.parse(secondInput.text);
    if (operation == '+') {
      setState(() {
        result = firstNum + secondNum;
      });
    } else if (operation == '-') {
      setState(() {
        result = firstNum - secondNum;
      });
    } else if (operation == '*') {
      setState(() {
        result = firstNum * secondNum;
      });
    } else if (operation == '/') {
      setState(() {
        result = firstNum ~/ secondNum; //разделение с пререходом к типу int
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                TextField(
                  controller: firstInput,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
                TextField(
                  controller: secondInput,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
