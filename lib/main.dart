import 'package:flutter/material.dart';
import 'package:hack19_job_finder/pages/Registeration.dart';
import 'package:hack19_job_finder/pages/home.dart';
import 'package:hack19_job_finder/pages/recomendations.dart';
import 'package:hack19_job_finder/theme.dart' as Theme;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: Theme.Colors.homeBackgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      routes: {
        '/registration': (context) => RegisterForm(),
        '/recomendations': (context) => Recomendations()
      },
    );
  }
}
