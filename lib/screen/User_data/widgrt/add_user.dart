import 'package:flutter/material.dart';
import '../models/User_data.dart';
import 'new_user.dart';
import 'user_list.dart';
class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
 final List<UserData> _userData =[
    // UserData(
    //     name: 'a1',
    //     fname: 'b1',
    //     mname: 'c1'
    // ),
    // UserData(
    //     name: 'a2',
    //     fname: 'b2',
    //     mname: 'c2'
    // ),
  ];
void addNewUser(
    String addname,
    String addFname,
    String addMname
    ){
 final NewAdd = UserData(
     name: addname,
     fname: addFname,
     mname: addMname
 );
 setState(() {
   _userData.add(NewAdd);
 });
 ;}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewUser(addNewUser),
        UserList(_userData),
      ],
    );
  }
}
