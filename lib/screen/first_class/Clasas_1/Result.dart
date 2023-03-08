import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback ResetHandler;


  Result(this.resultScore, this.ResetHandler );

  String get resultPhrase {
    String resultText;
    if (resultScore <=0 ) {
      resultText = '$resultScore';
    }  else {
      resultText = '$resultScore';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold, color: Colors.green),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                  MaterialStateProperty.all(Colors.blue.shade400),
              ),
                onPressed: ResetHandler,
                child: Icon(Icons.refresh, size: 30,)
            ),
          )
        ],
      ),
    );
  }
}
