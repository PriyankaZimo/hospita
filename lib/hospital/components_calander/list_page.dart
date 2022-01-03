import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListPage extends StatelessWidget {
  @override
  var cal=[Colors.blueAccent,Colors.orange,Colors.purpleAccent];
  List cate=['12:00-13:00','14:00-15:30','18:00-20:00'];
  List met=['Meeting','App. with Dr. Shelby','Ceramic containing Bike'];
  List country=['calgary','London','calgary'];
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child:Column(children: [
          Container(
            height:
            400,
            child: ListView.builder(
                itemCount: cate.length,
                itemBuilder: (context,index)=>Container(
                  height: 100,
                  margin: EdgeInsets.only(left: 20,top: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(blurRadius: 4,color: Colors.black12)],color: cal[index]),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cate[index],style: TextStyle(color: Colors.white),),
                      SizedBox(height: 10,),
                      Text(met[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                      SizedBox(height: 10,),
                      Text(country[index],style: TextStyle(color: Colors.white),),
                    ],),
                )),
          ),
        ],)
    );
  }
}