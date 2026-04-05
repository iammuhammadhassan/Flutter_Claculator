import 'package:flutter_calculator/buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
 const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userInput = "";
  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    userInput,
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Text(answer, style: TextStyle(fontSize: 32, color: Colors.white)),
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
                      MyButtons(text: 'AC', onPressed: () {
                          userInput = '';
                          setState(() {});

                      }),
                      MyButtons(text: '+/-', onPressed: () {
                          userInput += '+/-';
                          setState(() {});

                      }),
                      MyButtons(
                        text: '%',
                        onPressed: () {
                          userInput += '%';
                          setState(() {});
                        },
                      ),
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
                      MyButtons(text: '7', onPressed: () {
                          userInput += '7';
                            setState(() {});
                      }),
                      MyButtons(text: '8', onPressed: () {
                          userInput += '8';
                            setState(() {});
                      }),
                      MyButtons(text: '9', onPressed: () {
                          userInput += '9';
                            setState(() {});
                      }),
                      MyButtons(
                        text: 'X',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {
                          userInput += 'X';
                            setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(text: '4', onPressed: () {
                          userInput += '4';
                            setState(() {});
                      }),
                      MyButtons(text: '5', onPressed: () {
                          userInput += '5';
                            setState(() {});
                      }),
                      MyButtons(text: '6', onPressed: () {
                          userInput += '6';
                            setState(() {});
                      }),
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
                      MyButtons(text: '1', onPressed: () {
                          userInput += '1';
                            setState(() {});
                      }),
                      MyButtons(text: '2', onPressed: () {
                          userInput += '2';
                            setState(() {});
                      }),
                      MyButtons(text: '3', onPressed: () {
                          userInput += '3';
                            setState(() {});
                      }),
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
                      MyButtons(text: '0', onPressed: () {
                          userInput += '0';
                            setState(() {});
                      }),
                      MyButtons(text: '.', onPressed: () {
                          userInput += '.';
                            setState(() {});
                      }),
                      MyButtons(text: 'Del', onPressed: () {
                          userInput = userInput.substring(0, userInput.length - 1);
                            setState(() {});
                      }),
                      MyButtons(
                        text: '=',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {
                           userInput += '=';
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
