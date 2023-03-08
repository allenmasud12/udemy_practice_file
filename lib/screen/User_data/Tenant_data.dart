import 'package:flutter/material.dart';
import 'widgrt/add_user.dart';
class Tmain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "data"
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            AddUser()
          ],
        ),
      ),
    );
  }
}
