import 'package:explorergo/screens/bus_ticket.dart';
import 'package:explorergo/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:explorergo/screens/login.dart';
import 'package:explorergo/screens/register.dart';
import 'package:explorergo/screens/hotel_dashboard.dart';
import 'package:explorergo/screens/hotel_detail.dart';
import 'package:explorergo/screens/hotel_detail2.dart';
import 'package:explorergo/screens/bus_ticket.dart';

//flutter run --no-sound-null-safety

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Explorer Go.',
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home_screen': (context) => HomeScreen(),
      '/dash': (context) => const Dashboard(),
      '/pacific': (context) => const Detail(),
      '/radisson': (context) => const Detail2(),
      'busticket': (context) => const busticket(),
    },
  ));
}
