import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function(String a, double b) addNew;

  NewTransaction({required this.addNew});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
   // late DateTime selectedDate;
  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addNew(
      enteredTitle,
      enteredAmount,

    );

    Navigator.of(context).pop();
  }

  void datePickar(){
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime.now()
    ).then((pickedDate){
      if(pickedDate == null){
        return;
      }
      setState(() {
        // selectedDate = pickedDate;
      });
    });
    print("...");
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      margin: EdgeInsets.all(5),
      // padding: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Title"
              ),
              controller: titleController,
              onSubmitted: (_) => submitData,
              // onChanged: (val){
              //   titleText =val;
              // },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Amount"
              ),
              keyboardType: TextInputType.number,
              // controller: ammountController,
              controller: amountController,
              onSubmitted: (_) => submitData,
              // onChanged: (val){
              //   ammountText = val;
              // },
            ),
            Container(
              height: 50,
              child: Row(
                children: [
                  // Text(selectedDate == null?'No Date Chosen!': DateFormat.yMd().format(selectedDate) ),
                  TextButton(onPressed: datePickar,
                      child: Text('Choose Date',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).primaryColor
                    ) ,))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Theme.of(context).primaryColor,)
                    ),
                    onPressed: (){
                      submitData();
                    },
                    child: Text('Add Item')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
