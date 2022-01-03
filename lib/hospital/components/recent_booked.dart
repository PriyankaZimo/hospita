import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentPage extends StatelessWidget {
  var asset = [
    'assets/hosp.assets.jpeg',
    'assets/images (4).jpeg',
    'assets/images (7).jpeg'
  ];
  List recent = ['lvy Hospital', 'Akbar Saloon', 'your vet'];
  List item = ['Mohali,PB', 'Panchkula,HR', 'Zirakpur,PB'];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Booked',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 150,
              child: ListView.builder(
                itemCount: recent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          asset[index],
                          scale: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        recent[index],
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        item[index],
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
