import 'package:flutter/material.dart';
import 'package:sibola_mobile/screens/signin_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("halaman profil sementara"),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text("Logout"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
            }),
      ),
    );
  }
}























// class Logout extends StatefulWidget {
//   const Logout({Key? key}) : super(key: key);

//   @override
//   State<Logout> createState() => _LogoutState();
// }

// class _LogoutState extends State<Logout> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: ElevatedButton(
//           child: Text("Logout"),
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => SignInScreen()));
//           }),
//     ));
//   }
// }
