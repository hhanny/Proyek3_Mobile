import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sibola_mobile/screens/booking_screen.dart';
import 'package:sibola_mobile/screens/profile_screen.dart';
import 'package:sibola_mobile/screens/signin_screen.dart';
import 'package:sibola_mobile/screens/welcome.dart';
import 'package:sibola_mobile/screens/welcome_desc.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  
  // routes:
  // <String, WidgetBuilder>{
  //   '/Beranda': (BuildContext context) => HomeScreen(),
  //   '/Booking': (BuildContext context) => BookingScreen(),
  //   '/Profil': (BuildContext context) => ProfileScreen(),
  // };
}


class MyApp extends StatelessWidget {
  static var title;

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIBOLA',
      // routes: <String, WidgetBuilder>{
      //   '/Beranda' : (BuildContext context) => new HomeScreen(),
      //   '/Booking' : (BuildContext context) => new BookingScreen(),
      //   '/Profil' : (BuildContext context) => new ProfileScreen(),

      // },
      theme: ThemeData(
        fontFamily: "Cairo",
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
