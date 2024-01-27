import 'package:event_manager/canvascarnival.dart';
import 'package:event_manager/form.dart';
import 'package:event_manager/litfest.dart';
import 'package:event_manager/sportsmeet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyHomePage()));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 11, 12),
        appBar: AppBar(
          title: const Text(
            "Event Hub",
            style: TextStyle(
                color: Color.fromARGB(255, 219, 15, 0),
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          elevation: 10.0,
          shadowColor: const Color.fromARGB(255, 219, 15, 0),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Image.asset(
                    'images/Throwback.jpg',
                    height: 150,
                  ),
                  Image.asset(
                    'images/image2.jpg',
                    height: 150,
                  ),
                  Image.asset(
                    'images/image3.png',
                    height: 150,
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Upcoming Events:',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sportsmeet()));
                  },
                  style: TextButton.styleFrom(
                      maximumSize: const Size.fromWidth(500),
                      padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
                      backgroundColor: const Color.fromARGB(209, 219, 0, 0),
                      foregroundColor: Colors.white),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.sports_basketball,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      Text('Kho Kho Tournment'),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LitFest()));
                  },
                  style: TextButton.styleFrom(
                      maximumSize: const Size.fromWidth(500),
                      padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
                      backgroundColor: const Color.fromARGB(209, 219, 0, 0),
                      foregroundColor: Colors.white),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.book_outlined,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      Text('Literary Festival'),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CanvasCarnival()));
                  },
                  style: TextButton.styleFrom(
                      maximumSize: const Size.fromWidth(500),
                      padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
                      backgroundColor: const Color.fromARGB(209, 219, 0, 0),
                      foregroundColor: Colors.white),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.brush_outlined,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      Text('Canvas Carnival'),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sportsmeet()));
                  },
                  style: TextButton.styleFrom(
                      maximumSize: const Size.fromWidth(500),
                      padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
                      backgroundColor: const Color.fromARGB(209, 219, 0, 0),
                      foregroundColor: Colors.white),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.sports_basketball,
                          color: Color.fromARGB(255, 255, 255, 255)),
                      Text('Kho Kho Tournment'),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )
                    ],
                  )),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyForm()));
                },
                child: const Text("New Event"),
              )
            ],
          ),
        ));
  }
}
