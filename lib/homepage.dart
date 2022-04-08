import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calnder extends StatelessWidget {
  const Calnder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("Cycle Calender"),
      centerTitle: true,
    ),
      body: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
      ),

    );
  }
}
