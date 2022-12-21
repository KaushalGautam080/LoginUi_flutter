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
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Card(
            elevation: 10,
            child: Container(
              width: 300,
              height: 1200,
              padding: EdgeInsets.all(12.4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Username", icon: Icon(Icons.people)),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      icon: Icon(Icons.password_sharp),
                    ),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {},
                    child: Text("Login"),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
