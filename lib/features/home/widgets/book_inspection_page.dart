
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import '../../login/login_page.dart';
import '../home_page.dart';

class BookInspectionPage extends StatefulWidget {
  const BookInspectionPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return BookInspectionPage();
  });

  @override
  State<BookInspectionPage> createState() => _BookInspectionPageState();
}

class _BookInspectionPageState extends State<BookInspectionPage> {
  DateTime theFocusedDay = DateTime.now();
  DateTime theSelectedDay = DateTime.now();
  CalendarFormat calendarFormat = CalendarFormat.month;

  var hour = 0;
  var minute = 0;
  var timeFormat = "AM";
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Inspection"),),
      body: SingleChildScrollView(
        controller: _scrollController,
       // physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select the date and time you want to book for the house inspection",
                style: TextStyle(color: Colors.blueGrey, fontSize: 16),),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.02,),
              //  Image.asset("assets/home/calendar.png"),

              Column(
                children: [
                  TableCalendar(
                    firstDay: DateTime.utc(1900),
                    focusedDay: theFocusedDay,
                    lastDay: DateTime.utc(theFocusedDay.year + 50),
                    // to make the calendar interactive
                    selectedDayPredicate: (day) =>
                        isSameDay(theSelectedDay, day),
                    onDaySelected: (selectedDay, focusedDay) =>
                        setState(() {
                          theSelectedDay = selectedDay;
                          theFocusedDay = focusedDay;
                        }),
                    //to set the calendar by weeks view
                    calendarFormat: calendarFormat,
                    onFormatChanged: (format) =>
                        setState(() => calendarFormat = format),

                    //to set the day of week to monday

                    startingDayOfWeek: StartingDayOfWeek.monday,
                    headerStyle: HeaderStyle(
                      decoration: BoxDecoration(color: Colors.blue[500]),
                      headerMargin: EdgeInsets.only(bottom: 20),
                      titleCentered: true,
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekendStyle: TextStyle(color: Colors.red),
                      weekdayStyle: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    calendarStyle: CalendarStyle(
                      tablePadding: EdgeInsets.symmetric(horizontal: 14),
                      todayTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      todayDecoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      selectedDecoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),

                  // Text("Suitable date: ${DateFormat('MMM d, y').format(theFocusedDay)}",
                  //   style: TextStyle(fontSize: 18,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black),
                  //   textAlign: TextAlign.center,
                  // ),
                ],
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.02,),

              Column(
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height*0.05,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 1),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(
                        // //  width:2,
                        // )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          NumberPicker(
                            minValue: 0,
                            maxValue: 12,
                            value: hour,
                            zeroPad: true,
                            infiniteLoop: true,
                            //textMapper: true,
                            itemWidth: 60,
                            itemHeight: 40,
                            onChanged: (value) {
                              setState(() {
                                hour = value;
                              });
                            },
                            textStyle: TextStyle(color: Colors.grey.shade400,
                                fontSize: 15),
                            selectedTextStyle: TextStyle(color: Colors.white,
                                fontSize: 20),
                            decoration: BoxDecoration(
                                border: Border(top: BorderSide(
                                  color: Colors.white,
                                ),
                                    bottom: BorderSide(
                                      color: Colors.white,
                                    )
                                )
                            ),
                          ),
                          NumberPicker(
                            minValue: 0,
                            maxValue: 59,
                            value: minute,
                            zeroPad: true,
                            infiniteLoop: true,
                            //textMapper: true,
                            itemWidth: 60,
                            itemHeight: 40,
                            onChanged: (value) {
                              setState(() {
                                minute = value;

                              });
                            },
                            textStyle: TextStyle(color: Colors.grey.shade400,
                                fontSize: 15),
                            selectedTextStyle: TextStyle(color: Colors.white,
                                fontSize: 20),
                            decoration: BoxDecoration(
                                border: Border(top: BorderSide(
                                  color: Colors.white,
                                ),
                                    bottom: BorderSide(
                                      color: Colors.white,
                                    )
                                )
                            ),
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    timeFormat = "AM";
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: timeFormat == "AM"
                                        ? Colors.blue.shade900
                                        : Colors.grey.shade800,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  child: Text("AM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),),
                                ),
                              ),
                              SizedBox(height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.02),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    timeFormat = "PM";
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: timeFormat == "PM"
                                        ? Colors.grey
                                        : Colors.grey.shade700,
                                    border: Border.all(
                                        color: timeFormat == "PM"
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade700
                                    ),
                                  ),
                                  child: Text("PM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery .of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(
                            10), // Adjust border radius as needed

                      ),
                      child: Column(
                        children: [
                          Text("Suitable date : ${DateFormat('MMM d, y').format(theFocusedDay)}.",
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          Text("Suitable time -  "
                                "${hour.toString().padLeft(2, "0")}: ${minute
                                .toString().padLeft(2, "0")} ${timeFormat}.",
                              style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),

                        ],
                      ),


                  )
                ],
              ),


              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.02,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset("assets/home/badge.png",
                                      color: Colors.green.shade700,),
                                    SizedBox(height: 8),
                                    Text("Congratulations",
                                      style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 8),
                                    Text(
                                      "You've successfully booked house inspection!",
                                      style: TextStyle(fontSize: 16),),
                                  ],
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.pushReplacement(context, HomePage.route());
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue.shade900,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // Adjust the border radius as needed
                                          ),
                                        ),
                                        child: Text("Exit"),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade900,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Adjust the border radius as needed
                          ),

                        ),
                        child: Text("Book Now")
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.01,),
              Center(
                child: Image.asset('assets/onboarding1/line.png',
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 2,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.005,
                ),
              )

            ],
          ),
        ),
      ),

    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}




