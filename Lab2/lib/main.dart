import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(radius: 50.0, backgroundImage: AssetImage('asset/images/avatar.jpg')),
            Text('Le Mai Huong', style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
              fontFamily: 'Playwrite',
            ),),
            Text('Coder', style: TextStyle(
              fontSize: 20.0,
              color: Colors.teal[900],
              fontFamily: 'Roboto',
            ),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.teal,),
                  SizedBox(width: 20.0,),
                  Text('huonglm.22ite@vku.udn.vn', style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone, color: Colors.teal,),
                  SizedBox(width: 20.0,),
                  Text('123 123 1234', style: TextStyle(fontSize: 20),)
                ],
              ),
            )
          ],
        )),
      )
    );
  }
}