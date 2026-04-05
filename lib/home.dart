import 'package:flutter_calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userInput = "";
  var answer = "";

  bool _isOperator(String ch) {
    return ch == '+' || ch == '-' || ch == '*' || ch == '/' || ch == '%';
  }

  @override
  Widget build(BuildContext context) {
    void equalPressed() {
      if (userInput.isEmpty) {
        answer = '';
        return;
      }

      String finalUserInput = userInput
          .replaceAll('X', '*')
          .replaceAll('x', '*')
          .trim();

      if (finalUserInput.isEmpty ||
          _isOperator(finalUserInput[finalUserInput.length - 1])) {
        answer = 'Invalid expression';
        return;
      }

      try {
        // ignore: deprecated_member_use
        Parser p = Parser();
        Expression exp = p.parse(finalUserInput);
        ContextModel cm = ContextModel();
        // ignore: deprecated_member_use
        double eval = exp.evaluate(EvaluationType.REAL, cm);
        answer = eval.toString();
      } on FormatException {
        answer = 'Invalid expression';
      } catch (_) {
        answer = 'Error';
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                  ),
                  Text(
                    userInput,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Text(
                    answer,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButtons(
                        text: 'AC',
                        onPressed: () {
                          userInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: 'Ans',
                        onPressed: () {
                          userInput += answer;
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: '%',
                        onPressed: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
                        SizedBox(width: 10),
                      MyButtons(
                        text: '/',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {
                          userInput += '/';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(
                        text: '7',
                        onPressed: () {
                          userInput += '7';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: '8',
                        onPressed: () {
                          userInput += '8';
                          setState(() {});
                        },
                      ),
                        SizedBox(width: 10),
                      MyButtons(
                        text: '9',
                        onPressed: () {
                          userInput += '9';
                          setState(() {});
                        },
                      ),
                        SizedBox(width: 10),
                      MyButtons(
                        text: 'X',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {
                          userInput += 'x';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(
                        text: '4',
                        onPressed: () {
                          userInput += '4';
                          setState(() {});
                        },
                      ),
                        SizedBox(width: 10),
                      MyButtons(
                        text: '5',
                        onPressed: () {
                          userInput += '5';
                          setState(() {});
                        },
                      ),
                          SizedBox(width: 10),
                      MyButtons(
                        text: '6',
                        onPressed: () {
                          userInput += '6';
                          setState(() {});
                        },
                      ),
                          SizedBox(width: 10),
                      MyButtons(
                        onPressed: () {
                          userInput += '-';
                          setState(() {});
                        },
                        text: '-',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(
                        text: '1',
                        onPressed: () {
                          userInput += '1';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),  
                      MyButtons(
                        text: '2',
                        onPressed: () {
                          userInput += '2';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: '3',
                        onPressed: () {
                          userInput += '3';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: '+',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {
                          userInput += '+';
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(
                        text: '0',
                        onPressed: () {
                          userInput += '0';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: '.',
                        onPressed: () {
                          userInput += '.';
                          setState(() {});
                        },
                      ),
                      SizedBox(width: 10),
                      MyButtons(
                        text: 'Del',
                        onPressed: () {
                          if (userInput.isNotEmpty) {
                            userInput = userInput.substring(
                              0,
                              userInput.length - 1,
                            );
                          }
                          setState(() {});
                        },
                      ),
                        SizedBox(width: 10),
                      MyButtons(
                        text: '=',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {
                          equalPressed();
                          userInput = "";
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
