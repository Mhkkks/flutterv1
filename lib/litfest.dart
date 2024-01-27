import 'package:event_manager/myhomepage.dart';
import 'package:flutter/material.dart';

class LitFest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: const Text(
              "Literary Festival:",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            toolbarHeight: 80,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            elevation: 10.0,
            shadowColor: const Color.fromARGB(255, 63, 33, 194)),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Image.asset(
              "images/litfest.jpg",
              width: 500,
            ),
            Container(
                color: const Color.fromARGB(255, 63, 33, 194),
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'LITERARY FEST',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Get ready for AAROHAN, IGDTUW literary fiesta',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Immerse yourself in slam poetry, relay writing, engaging debates in English & Hindi, literary karaoke, MUNs and many more.',
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 24.0,
                        ),
                        Text(
                          'Dates: 12Jan- 28Jan',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 24.0,
                        ),
                        Text(
                          'Time: 2pm-8pm',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 24.0,
                        ),
                        Text(
                          'Venue: College Auditorium',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 63, 33, 194),
                      foregroundColor: Colors.white),
                  child: const Text("Interested"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 63, 33, 194),
                      foregroundColor: Colors.white),
                  child: const Text("Not Interested"),
                )
              ],
            ),
          ],
        )));
  }
}
