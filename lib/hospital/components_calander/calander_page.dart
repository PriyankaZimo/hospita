import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class CalanderPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black12,blurRadius: 5,offset: Offset(0,5))
          ]
      ),
      child: TableCalendar(
        calendarFormat: CalendarFormat.week,
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),

      ),
    );
  }

}