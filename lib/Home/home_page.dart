import 'package:flutter/material.dart';
import 'package:udemy_practice/screen/User_data/Tenant_data.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/class_1.dart';

import '../screen/Class_2/practice/Class_2_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Class_1()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 80,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(7)
                  ),

                  child: Center(child: Text("Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                  )),

                ),
              ),
              // SizedBox(
              //   width: 20,
              // ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Class2Main()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 80,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(7)
                  ),

                  child: Center(child: Text("Chart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  )),

                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tmain()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 80,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(7)
                  ),

                  child: Center(child: Text("User Data",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  )),

                ),
              ),
              // SizedBox(
              //   width: 20,
              // ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 80,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(7)
                ),

                child: Center(child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                )),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
