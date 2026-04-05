import 'package:flutter_calculator/buttons.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                  Text("First Number", style: TextStyle(fontSize: 32)),
                  Text("Second Number", style: TextStyle(fontSize: 32)),
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
                      MyButtons(text: 'AC', onPressed: () {}),
                      MyButtons(text: '+/-', onPressed: () {}),
                      MyButtons(text: '%', onPressed: () {}),
                      MyButtons(
                        text: '/',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(text: '7', onPressed: () {}),
                      MyButtons(text: '8', onPressed: () {}),
                      MyButtons(text: '9', onPressed: () {}),
                      MyButtons(
                        text: 'X',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(text: '4', onPressed: () {}),
                      MyButtons(text: '5', onPressed: () {}),
                      MyButtons(text: '6', onPressed: () {}),
                      MyButtons(
                        onPressed: () {},
                        text: '-',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(text: '1', onPressed: () {}),
                      MyButtons(text: '2', onPressed: () {}),
                      MyButtons(text: '3', onPressed: () {}),
                      MyButtons(
                        text: '+',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MyButtons(text: '0', onPressed: () {}),
                      MyButtons(text: '.', onPressed: () {}),
                      MyButtons(text: 'Del', onPressed: () {}),
                      MyButtons(
                        text: '=',
                        mycolor: const Color.fromARGB(255, 233, 126, 3),
                        onPressed: () {},
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
