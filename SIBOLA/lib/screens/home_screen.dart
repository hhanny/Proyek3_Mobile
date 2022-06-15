import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sibola_mobile/screens/booking_screen.dart';
import 'package:sibola_mobile/screens/profile_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {


  

//   // final List<Widget> _pages = [
//   //   HomeScreen(),
//   //   BookingScreen(),
//   //   ProfileScreen(),
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       bottomNavigationBar: Container(
//         color: Color.fromARGB(255, 79, 224, 235),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 11),
//           child: GNav(
//             backgroundColor: Color.fromARGB(255, 79, 224, 235),
//             color: Colors.white,
//             activeColor: Colors.white,
//             tabBackgroundColor: Color.fromARGB(255, 150, 226, 231),
//             gap: 8,
//             onTabChange: (index) {
//               print(index);
//             },
//             padding: EdgeInsets.all(16),
//             tabs: const [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Beranda',
//               ),
//               GButton(
//                 icon: Icons.archive,
//                 text: 'Booking',
//               ),
//               GButton(
//                 icon: Icons.person,
//                 text: 'Profil',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("halaman home screen sementara"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.archive, size: 50.0,),
          onPressed: null, 
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:sibola_mobile/cubit/auth_cubit.dart';
// import 'package:sibola_mobile/cubit/lapangan_cubit.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomePageState extends State<HomeScreen> {
//   @override
//   void initState() {
//     context.read<LapanganCubit>().fetchLapangan();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget topBar() {
//       return BlocBuilder<AuthCubit, AuthState>(
//         builder: (context, state) {
//           if (state is AuthSuccess) {
//             return Container(
//               margin: EdgeInsets.only(
//                 left: defaultMargin,
//                 right: defaultMargin,
//                 top: defaultMargin,
//               ),
//               width: double.infinity,
//               child: Row(
//                 children: [
//                   Container(
//                     width: 34,
//                     height: 34,
//                     margin: EdgeInsets.only(right: 8),
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage("assets/image_profile.png"),
//                       ),
//                     ),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Hello, ${state.user.nama}",
//                         style: blackTextStyle.copyWith(
//                           fontSize: 12,
//                           fontWeight: semiBold,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         children: [
//                           Container(
//                             width: 15,
//                             height: 15,
//                             decoration: BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage("assets/icon_location.png"),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 4),
//                           Text(
//                             "West Street, Samarinda",
//                             style: lightTextStyle.copyWith(
//                               fontSize: 12,
//                               fontWeight: reguler,
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   Spacer(),
//                   ContainerIcon(imageUrl: "assets/icon_notification.png"),
//                 ],
//               ),
//             );
//           } else {
//             return SizedBox();
//           }
//         },
//       );
//     }
