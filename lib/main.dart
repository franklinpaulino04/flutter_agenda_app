import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_agenda_app/page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agenda',
      theme: ThemeData(
          primaryColor: Colors.blue[800],
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )
              )
          )
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}
