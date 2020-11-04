import 'package:flutter/material.dart';
import 'package:young_activist/home.dart';
import 'package:young_activist/log_in.dart';
import 'package:young_activist/calendar.dart';
import 'package:young_activist/gallery.dart';
import 'package:young_activist/payment.dart';
import 'package:young_activist/profile.dart';
import 'package:young_activist/qr_scanner.dart';

void main() => runApp(MaterialApp(
  initialRoute : '/log_in',
  routes: {
    '/log_in': (context) => LogScreen(),
    '/home': (context) => home_page(),
    '/calendar' : (context) => calendar(),
    '/gallery' : (context) => gallery(),
    '/payment' : (context) => payment(),
    '/profile' : (context) => profile(),
      '/qr_scanner' : (context) => qr_scanner(),
  }
));

