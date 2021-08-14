import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final String text;

  Button({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: () => {print("Clicou em ${text}")},
          child: Column(
            children: [
              Icon(icon),
              Text(text),
            ],
          )),
    );
  }
}
