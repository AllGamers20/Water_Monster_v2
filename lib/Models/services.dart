// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:water_monster_v2/Constants/color.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  DateTime dateTime = DateTime(2022, 02, 25, 12, 30);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(
                  4.0,
                  4.0,
                ),
              ),
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(
                  -4.0,
                  -4.0,
                ),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(5.0)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => date_time_picker(),
                        child: Image.asset(
                          'Assets/png/plumber.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5.0)),
                      GestureDetector(
                        onTap: () => date_time_picker(),
                        child: Image.asset(
                          'Assets/png/provider.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(5.0)),
                      GestureDetector(
                        onTap: () => date_time_picker(),
                        child: Image.asset(
                          'Assets/png/cleaner.png',
                          width: 110,
                          height: 110,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void date_time_picker() async {
    DateTime? newdate = await showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (newdate == null) return;
    TimeOfDay? newTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: dateTime.hour,
          minute: dateTime.minute,
        ));
    if (newTime == null) return;
    final new_Date_Time = DateTime(
      newdate.year,
      newdate.month,
      newdate.day,
      newTime.hour,
      newTime.minute,
    );
    setState(() {
      Fluttertoast.showToast(
          msg:
              "The Date is${new_Date_Time.year}-${new_Date_Time.month}-${new_Date_Time.day} TheTime is${new_Date_Time.hour}:${new_Date_Time.minute}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 10,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 16.0);
    });
  }
}
