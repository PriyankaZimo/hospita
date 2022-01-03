import 'package:flutter/material.dart';
import 'package:hospitalproject/hospital/components/hospitals_page.dart';
import 'package:hospitalproject/hospital/components/recent_booked.dart';
import 'package:hospitalproject/hospital/components/salons_page.dart';
import 'package:hospitalproject/hospital/search_bar.dart';

import 'components_calander/calander_page.dart';
import 'components_calander/event_page.dart';
import 'components_calander/list_page.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Icon(Icons.notifications_none,color: Colors.blue,size: 30,)
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
          title: Center(
              child: Text(
            'Favourites',
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
        body: Column(
          children: [
            Expanded(child: getMyPage()),
            Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10)
              ]),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                      left: 10,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              pos = 0;
                            });
                          },
                          icon: Icon(
                            Icons.favorite_outline,
                            color: pos == 0 ? Colors.indigoAccent : Colors.blue,
                            size: 35,
                          ))),
                  Positioned(
                      right: 10,
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              pos = 2;
                            });
                          },
                          icon: Icon(
                            Icons.person_outlined,
                            color: pos == 2 ? Colors.indigoAccent : Colors.grey,
                            size: 35,
                          ))),
                  Positioned(
                      top: -29,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white30,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                pos = 1;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              color:
                                  pos == 1 ? Colors.indigoAccent : Colors.white,
                              size: 30,
                            )),
                      ))
                ],
              ),
            )
          ],
        ));
  }

  getMyPage() {
    switch (pos) {
      case 0:
        return ListView(
          children: [SearchPage(), RecentPage(), HospitalPage(), SalonPage()],
        );
      case 1:
        return ListView(
          children: [
            CalanderPage(),
            Eventpage(),
            ListPage(),
          ],
        );
      case 2:
        return Container(
          color: Colors.green,
        );
    }
  }
}
