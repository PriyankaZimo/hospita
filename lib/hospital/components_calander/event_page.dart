import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Eventpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children:[ Row(children: [
            Text('18',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
            SizedBox(width: 10,),
            Text('Today',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],),
            Text('  FRI  04 events',style: TextStyle(fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            Divider(thickness: 0.5,color: Colors.grey,)
          ]),
    );
  }
}