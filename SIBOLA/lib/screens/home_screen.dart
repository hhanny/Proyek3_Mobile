import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sibola_mobile/screens/booking_screen.dart';
import 'package:sibola_mobile/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  

  // final List<Widget> _pages = [
  //   HomeScreen(),
  //   BookingScreen(),
  //   ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 56, 231, 164),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 11),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 56, 231, 164),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 143, 230, 196),
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
