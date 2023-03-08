import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:udemy_practice/screen/Class_2/practice/models/Transaction.dart';
import 'package:udemy_practice/screen/Class_2/practice/widget/New_Transaction.dart';
import 'package:udemy_practice/screen/Class_2/practice/widget/Transaction_list.dart';
import 'package:udemy_practice/screen/Class_2/practice/widget/chart.dart';

class Class2Main extends StatefulWidget {

  @override
  State<Class2Main> createState() => _Class2MainState();
}

class _Class2MainState extends State<Class2Main> {
  final List<Transaction> userTransactions = [
    // Transaction(
    //   id: 't1',
    //   title: 'name',
    //   ammount: 69.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't2',
    //   title: 'name1',
    //   ammount: 16.53,
    //   date: DateTime.now(),
    // ),
  ];

  List<Transaction> get _recentTransaction {
    return userTransactions.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      ammount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      userTransactions.add(newTx);
    });
  }
// bool ShowChart = false;

  // void _startAddNewTransaction(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (_) {
  //       return GestureDetector(
  //         onTap: () {},
  //         child: NewTransaction(_addNewTransaction),
  //         // behavior: HitTestBehavior.opaque,
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        // actions: [
        //  IconButton(
        //      onPressed: ()=> _startAddNewTransaction(context),
        //      icon: Icon(Icons.add)
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("Show chart"),
            //     Switch(value: ShowChart, onChanged:(value){
            //       setState(() {
            //         ShowChart=value;
            //       });
            //     } )
            //   ],
            // ),
            Chart(_recentTransaction),
            TransactionList(userTransactions),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton
        (
        // onPressed:()=> _startAddNewTransaction(context),
        onPressed: () {
          showModalBottomSheet(context: context, builder: (BuildContext ctx){
            return NewTransaction(addNew: _addNewTransaction,);
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


