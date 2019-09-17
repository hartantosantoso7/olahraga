import 'package:flutter/material.dart';
import 'screen/olahraga.dart';
import 'screen/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Olahraga',

      theme: ThemeData(
        primaryColor: Colors.redAccent,
        accentColor: Colors.red,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),

        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20 
            ),
            subhead: TextStyle(fontWeight: FontWeight.bold),
        )
      ),

      routes: {
        '/':(ctx) => Olahraga(),
        '/detail': (ctx) => DetailScreen()
      },
    );
  }
}

