import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sibola_mobile/screens/booking_screen.dart';
import 'package:sibola_mobile/screens/profile_screen.dart';
import 'package:sibola_mobile/screens/signin_screen.dart';
import 'package:sibola_mobile/screens/welcome.dart';
import 'package:sibola_mobile/screens/welcome_desc.dart';
import 'package:sibola_mobile/widgets/iconfont.dart';

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
      home: const welcome(),
    );
  }
}

// class SplashPage extends StatelessWidget {
//   int duration = 0;
//   Widget goToPage;

//   SplashPage({ this.goToPage, this.duration });
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: this.duration), () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => this.goToPage));
//     });

//     return Scaffold(
//       body: Container(
//         color: Color(0xFF80C38),
//         alignment: Alignment.center,
//         child: IconFont(
//           color: Colors.white,
//           iconName: IconFontHelper.LOGO,
//           size: 100
//         )
//         )
//     )
//   }
// }

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _Navbar();
}

class _Navbar extends State<Navbar> {


  

  // final List<Widget> _pages = [
  //   HomeScreen(),
  //   BookingScreen(),
  //   ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 79, 224, 235),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 11),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 79, 224, 235),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 150, 226, 231),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Beranda',
              ),
              GButton(
                icon: Icons.archive,
                text: 'Booking',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}