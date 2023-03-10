import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
 final String label;
 final double spendingAmount;
 final double spendingTotal;

 ChartBar(this.label,
     this.spendingAmount,
     this.spendingTotal
     );

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          FittedBox(child: Text('\$${spendingAmount.toStringAsFixed(0)}')),
          SizedBox(height: 4,),
          Container(
            height: 60,
            width: 15,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(heightFactor: spendingTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),)
              ],
            ),
          ),
          SizedBox(height: 4,),
          Text(label)

        ],
      );
  }
}
