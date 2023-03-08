import 'package:flutter/material.dart';
class Button extends StatelessWidget {

  final VoidCallback SelectButton;
  final String AnsweText;

  Button(this.SelectButton, this.AnsweText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 40,
        right: 40),
        child: ElevatedButton(
            onPressed:SelectButton,
            style: ButtonStyle(
                foregroundColor:
                MaterialStateProperty.all(Colors.white),
                backgroundColor:
                MaterialStateProperty.all(Colors.green)
            ),
            child: Text(AnsweText)),
      ),

    );
  }
}
