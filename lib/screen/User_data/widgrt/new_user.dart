import 'package:flutter/material.dart';
class NewUser extends StatelessWidget {
  final Function addNew;
  final nameController = TextEditingController();
  final FnameController = TextEditingController();
  final MnameController = TextEditingController();
NewUser(this.addNew);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: 'Name'
            ),
            controller: nameController,
            // onChanged: (val){
            //   nameInput = val;
            // },
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'F Name'
            ),
            controller: FnameController,
            // onChanged: (val){
            //   FnameInput = val;
            // },
          ),
          TextField(
            decoration: InputDecoration(
                labelText: 'M Name'
            ),
            controller: MnameController,
            // onChanged: (val){
            //   MnameInput = val;
            // },
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.red)
            ),
            onPressed: (){

              addNew(
                nameController.text,
                FnameController.text,
                MnameController.text

              );
            },
            child: Text(
              'Save',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
