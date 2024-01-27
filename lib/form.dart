import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_manager/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyForm()));
}

FirebaseFirestore firestore = FirebaseFirestore.instance;

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _time = TextEditingController();
  final TextEditingController _venue = TextEditingController();
  final TextEditingController _org = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Event Registration"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
                icon: Icon(Icons.label),
                border: OutlineInputBorder(),
              ),
              controller: _name,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Date",
                icon: Icon(Icons.label),
                border: OutlineInputBorder(),
              ),
              controller: _date,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Time",
                icon: Icon(Icons.label),
                border: OutlineInputBorder(),
              ),
              controller: _time,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Organisation",
                icon: Icon(Icons.label),
                border: OutlineInputBorder(),
              ),
              controller: _org,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: addEvent,
              child: const Text(
                "Register",
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 150, 2, 2),
                ),
              ),
            )
          ],
        ));
  }

  void addEvent() async {
    try {
      if (_name.text.isEmpty ||
          _date.text.isEmpty ||
          _venue.text.isEmpty ||
          _time.text.isEmpty ||
          _org.text.isEmpty) {
        print("Fill in all the details");
        return;
      }

      await firestore.collection('events').add({
        'name': _name.text,
        'date': _date.text,
        'time': _time.text,
        'venue': _venue.text,
        'org': _org.text,
      });

      print('Event added');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyPage()));
    } catch (e) {
      print(e);
    }
  }
}
