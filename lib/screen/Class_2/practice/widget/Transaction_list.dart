import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:udemy_practice/screen/Class_2/practice/models/Transaction.dart';

class TransactionList extends StatelessWidget {
 final List<Transaction> transations;
 TransactionList(this.transations);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 700,
      child: ListView.builder(
        itemBuilder: (Conx, index){
          return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).primaryColor,
                          width: 2,
                        )
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${transations[index].ammount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                      ),),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(transations[index].title,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(
                        DateFormat.yMMMd().format(transations[index].date),
                        style: TextStyle(
                            color: Colors.grey.shade600
                        ),
                      ),
                    ],
                  )
                ],
              )
          );
        },
          itemCount: transations.length,
        ),

    );
  }
}
