import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(30),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: TextStyle(
                color: Colors.grey,
              ),
                decoration: InputDecoration(
                    fillColor: Color(0xFFEEEEEE),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent,),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: IconButton(
                      onPressed: (){}, icon: Icon(Icons.search),color: Colors.grey,),
                    hintText: 'Search..',
                    hintStyle: TextStyle(color: Colors.grey)
                ),),

            ],
          ),

    );
  }
}
