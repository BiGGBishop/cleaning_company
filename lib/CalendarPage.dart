import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:clean_app/color_scheme.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calendarPage(),
      theme: ThemeData(fontFamily: 'ubuntu'),
    );
  }
}

class calendarPage extends StatefulWidget {
  @override
  _calendarPageState createState() => _calendarPageState();
}

class _calendarPageState extends State<calendarPage> {
  CalendarController _calendarController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Select Date",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarController: _calendarController,
            initialCalendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            formatAnimation: FormatAnimation.slide,
            headerStyle: const HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
              leftChevronIcon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 15,
              ),
              rightChevronIcon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leftChevronMargin: EdgeInsets.only(left: 70),
              rightChevronMargin: EdgeInsets.only(right: 70),
            ),
            calendarStyle: const CalendarStyle(
                weekendStyle: TextStyle(color: Colors.white),
                weekdayStyle: TextStyle(color: Colors.white)),
            daysOfWeekStyle: const DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.white),
                weekdayStyle: TextStyle(color: Colors.white)),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "18 April 2020",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        dayTask("10 am", "Michael Hamilton"),
                        dayTask("11 am", "Alexandra Johnson"),
                        dayTask("2 pm", "Michael Hamilton"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row dayTask(String time, String name) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(
            time,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(20),
            color: const Color(0xffdfdeff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: purple, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Upkeep Cleaning',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer,
                      color: purple,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "$time - 5 pm",
                      style: TextStyle(
                          color: purple,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      "Client Rating",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: purple,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.mail_outline,
                      color: purple,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "\$50",
                      style: TextStyle(
                          color: purple,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
