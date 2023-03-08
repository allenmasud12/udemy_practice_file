import 'package:flutter/material.dart';

class AnsBtn extends StatelessWidget {
  final  btnprss;
  final answeText;

  AnsBtn(this.btnprss, this.answeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2.0),
        child: ElevatedButton(
            onPressed: btnprss,
            child: Text(answeText))
    );
  }
}
