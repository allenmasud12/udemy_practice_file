import 'package:flutter/material.dart';

import '../models/User_data.dart';
class UserList extends StatelessWidget {
    final List<UserData> uuserData;

    UserList(this.uuserData);
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: uuserData.map((user){
          return Card(
            child: Column(
              children: [
                Text(user.name),
                Text(user.fname),
                Text(user.mname),
              ],
            ),
          );
        }).toList()
    );
  }
}

