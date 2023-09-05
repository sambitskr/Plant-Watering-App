import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_watering_app/Home/HomeScreen.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

class Aboutplants extends StatefulWidget {
  final String plantImagePath;
  final String plantName;

  const Aboutplants(
      {Key? key, required this.plantImagePath, required this.plantName})
      : super(key: key);

  @override
  State<Aboutplants> createState() => _AboutplantsState();
}

class _AboutplantsState extends State<Aboutplants> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return AspectRatio(
                      aspectRatio: 9 /
                          18, // Maintain a square aspect ratio (you can adjust this)
                      child: Container(
                        child: Image.asset(
                          widget.plantImagePath,
                          fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  top: 500,
                  left: 2,
                  right: 2,
                  child: Container(
                    height: 700,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 20, top: 50),
                              child: Text(
                                widget.plantName,
                                style: GoogleFonts.gideonRoman(
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'name: Goldy',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis.',
                                style: GoogleFonts.ubuntu(fontSize: 13),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'watering calendar',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              CalendarTimeline(
                                showYears: false,
                                initialDate: _selectedDate,
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now()
                                    .add(const Duration(days: 365 * 4)),
                                onDateSelected: (date) =>
                                    setState(() => _selectedDate = date),
                                monthColor: Colors.black,
                                dayColor: Colors.black,
                                dayNameColor: const Color(0xFF333A47),
                                activeDayColor: Colors.white,
                                activeBackgroundDayColor: Colors.redAccent[100],
                                dotsColor: const Color(0xFF333A47),
                                selectableDayPredicate: (date) =>
                                    date.day != 23,
                                locale: 'en',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //       left: 20,
            //       right: 20,
            //     ),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         // Text(
            //         //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis.',
            //         //   style: GoogleFonts.ubuntu(fontSize: 12),
            //         // ),
            //         // const SizedBox(
            //         //   height: 10,
            //         // ),
            //         // const Text(
            //         //   'watering calendar',
            //         //   style: TextStyle(
            //         //       color: Colors.black,
            //         //       fontSize: 20,
            //         //       fontWeight: FontWeight.bold),
            //         // ),
            //         // const SizedBox(
            //         //   height: 5,
            //         // ),
            //         // CalendarTimeline(
            //         //   showYears: false,
            //         //   initialDate: _selectedDate,
            //         //   firstDate: DateTime.now(),
            //         //   lastDate:
            //         //       DateTime.now().add(const Duration(days: 365 * 4)),
            //         //   onDateSelected: (date) =>
            //         //       setState(() => _selectedDate = date),
            //         //   monthColor: Colors.black,
            //         //   dayColor: Colors.black,
            //         //   dayNameColor: const Color(0xFF333A47),
            //         //   activeDayColor: Colors.white,
            //         //   activeBackgroundDayColor: Colors.redAccent[100],
            //         //   dotsColor: const Color(0xFF333A47),
            //         //   selectableDayPredicate: (date) => date.day != 23,
            //         //   locale: 'en',
            //         // ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
