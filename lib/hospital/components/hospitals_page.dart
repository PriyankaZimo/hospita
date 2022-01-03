import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  var asset = ['assets/hospital.png','assets/fortis.jpeg',
    'assets/max.png'];
  List recent=['lvy Hospital','Fortis','Maxx Hospital'];
  List item=['Mohali,PB','Panchkula,HR','Zirakpur,PB'];
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(left: 10,right: 10),
      width: double.infinity,
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hospitals',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
            SizedBox(height:160,
            child: ListView.builder(
            itemCount: recent.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              height: 100,
              padding: EdgeInsets.all(10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset(
                      asset[index],scale:2,),
                  ),
                  SizedBox(height: 10,),
                  Text(recent[index],
                    style: TextStyle(color: Colors.lightBlue,fontSize: 15,),),
                  Text(item[index],style: TextStyle(color: Colors.black,fontSize: 10),),
                ],
              ),
            ),
          ),)


        ],
      )

    );
  }
}
