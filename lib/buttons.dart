import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final Color mycolor;
  final VoidCallback onPressed;
  const MyButtons({
    super.key,
    required this.text,
    this.mycolor = Colors.grey,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(color: mycolor, shape: BoxShape.circle),
          height: 90,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
