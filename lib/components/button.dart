import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const darkColor = Color.fromARGB(214, 0, 0, 0);
  static const defaultColor = Color.fromARGB(220, 110, 110, 110);
  static const operationColor = Color.fromARGB(255, 0, 171, 214);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    Key? key,
    required this.text,
    this.big = false,
    this.color = defaultColor,
    required this.cb,
  }) : super(key: key);

  const Button.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = defaultColor,
    required this.cb,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.big = false,
    this.color = operationColor,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(242, 255, 255, 255),
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
