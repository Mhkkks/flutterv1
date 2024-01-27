import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int counter = 0;
  void iniState() {
    super.initState();

    counter = 10;
  }

  void increaseValue() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Counter: $counter",
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: increaseValue,
              child: const Text("Click Me"),
            )
          ]),
        ));
  }
}
