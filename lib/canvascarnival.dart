import 'package:event_manager/myhomepage.dart';
import 'package:flutter/material.dart';

class CanvasCarnival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: const Text(
              "Canvas Carnival:",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            toolbarHeight: 80,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            elevation: 10.0,
            shadowColor: Color.fromARGB(255, 185, 51, 118)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PhysicalModel(
                  color: Colors.transparent,
                  clipBehavior: Clip.antiAlias,
                  elevation: 5.0,
                  shape: BoxShape.circle,
                  child: Image.asset("images/sochcanv.jpg",
                      height: 100, width: 100),
                ),
                const Text(
                  'SOCH',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 40),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
                color: const Color.fromARGB(224, 116, 3, 50),
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'CANVAS CARNIVAL',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Brush, blend, and behold!',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'From strokes on canvas to moments of joy, 🎶 the series of art workshops 🎨 is a symphony of colors with these seven speculator events.',
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
                          'Venue: Online',
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
                      backgroundColor: const Color.fromARGB(224, 116, 3, 50),
                      foregroundColor: Colors.white),
                  child: const Text("Interested"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(224, 116, 3, 50),
                      foregroundColor: Colors.white),
                  child: const Text("Not Interested"),
                )
              ],
            ),
          ],
        )));
  }
}
