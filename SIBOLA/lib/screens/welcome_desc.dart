import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sibola_mobile/screens/signin_screen.dart';

import '../widgets/iconfont.dart';

class WelcomeDesc extends StatelessWidget {
  const WelcomeDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                      opacity: 0.4,
                      child: Image.asset('assets/images/bg.jpeg',
                          fit: BoxFit.cover)),
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // ClipOval(
                    //   child: Container(
                    //     width: 180,
                    //     height: 180,
                    //     color: Color.fromARGB(255, 62, 202, 191),
                    //     alignment: Alignment.center,

                    //     ),
                    //   ),

                    Text('SIBOLA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 65),
                    Text(
                        'Haloo !! ^_^ \n Selamat Datang di Aplikasi \n Booking Lapangan Secara Online \n Mau Booking Lapangan ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        )),
                    SizedBox(height: 65),
                    // Padding(
                    //   padding: const EdgeInsets.all(25),
                    //   child: FlatButton(
                    //     onPressed: () {},
                    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)
                    //     ),
                    //     color: Color.fromARGB(255, 134, 210, 231),
                    //     padding: EdgeInsets.all(25),
                    //     child: Text('Tratar Ahora',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.bold
                    //       )
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40, bottom: 40),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  splashColor:
                                      Color.fromARGB(255, 134, 210, 231)
                                          .withOpacity(0.2),
                                  highlightColor:
                                      Color.fromARGB(255, 134, 210, 231)
                                          .withOpacity(0.2),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignInScreen()));
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(13),
                                      child: Text('MAU !',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 134, 210, 231),
                                              fontWeight: FontWeight.bold)),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 134, 210, 231),
                                              width: 4)))))),
                    )
                  ],
                ))
              ],
            )));
  }
}
