import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Container(
        padding: EdgeInsets.all(12.4),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Username", icon: Icon(Icons.people)),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                icon: Icon(Icons.password_sharp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
