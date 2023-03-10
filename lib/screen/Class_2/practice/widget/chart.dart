
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:udemy_practice/screen/Class_2/practice/models/Transaction.dart';
import 'package:udemy_practice/screen/Class_2/practice/widget/chart_Bar.dart';
class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  Chart(this.recentTransaction);

  List<Map<String, Object>> get groupedTransactionValues{
    return List.generate(7, (index){
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;

      for(var i = 0; i < recentTransaction.length; i++){
        if(recentTransaction[i].date.day == weekDay.day &&
          recentTransaction[0].date.month == weekDay.month &&
          recentTransaction[0].date.year == weekDay.year){
            totalSum += recentTransaction[i].ammount;
        }
      };
      // print(DateFormat.E().format(weekDay));
      // print(totalSum);

      return {
          'day': DateFormat.E().format(weekDay).substring(0,1),
          'amount': totalSum};
    }).reversed.toList();
}
  double get totalSpending{
    return groupedTransactionValues.fold(0.0, (sum, item) {
      return sum + (item['amount'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(groupedTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionValues.map((data){
                return Flexible(
                  fit: FlexFit.tight,
                  child: ChartBar(
                      data['day'] as String ,
                      data['amount'] as double,
                      totalSpending == 0.0? 0.0 : (data['amount'] as double)/ totalSpending),
                );
          }).toList(),

        ),
      ),
    );
  }
}
