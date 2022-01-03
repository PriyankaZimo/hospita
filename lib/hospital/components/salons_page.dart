import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SalonPage extends StatelessWidget {
  var asset = ['assets/images (4).jpeg','assets/images (6).jpeg',
    'assets/images (4).jpeg'];
  List recent=['Ayara salon','Fortis','VR Salon'];
  List item=['Pathankot,PB','Panchkula,HR','Zirakpur,PB'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,),
      height:360,

      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Salons',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          SizedBox(height: 300,
            child: ListView.builder(
              itemCount: recent.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 100,
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Image.asset(
                        asset[index],scale: 2,),
                    ),
                    SizedBox(height: 10,),
                    Text(recent[index],
                      style: TextStyle(color: Colors.lightBlue,fontSize: 15,),),
                    Text(item[index],style: TextStyle(color: Colors.black,fontSize: 10),),
                  ],
                ),
              ),
            ),),
        ],
      ),
    );
  }
}
