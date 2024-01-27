import 'package:event_manager/myhomepage.dart';
import 'package:flutter/material.dart';

class Sportsmeet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            title: const Text(
              "Sports Meet:",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            toolbarHeight: 80,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            elevation: 10.0,
            shadowColor: const Color.fromARGB(255, 189, 40, 3)),
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
                  shadowColor: const Color.fromARGB(255, 158, 3, 3),
                  shape: BoxShape.circle,
                  child: Image.asset(
                    "images/Syn.jpeg",
                    height: 100,
                    width: 100,
                  ),
                ),
                const Text(
                  'SYNERGY',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
                color: const Color.fromARGB(255, 158, 3, 3),
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'KHO KHO TOURNMENT',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Get ready to dash and tag your way to glory!',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Calling all Kho-Kho enthusiasts! into the thrill of the game with Synergy! Dive Register now for a chance to showcase your skills and earn a participation certificate',
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
                          'Dates: 15 December 2023',
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
                          'Time: 11am',
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
                          'Venue: College Ground',
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
                      backgroundColor: const Color.fromARGB(255, 158, 3, 3),
                      foregroundColor: Colors.white),
                  child: const Text("Interested"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 158, 3, 3),
                      foregroundColor: Colors.white),
                  child: const Text("Not Interested"),
                )
              ],
            ),
          ],
        )));
  }
}
