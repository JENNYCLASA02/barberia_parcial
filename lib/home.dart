import 'package:barberia_parcial/constants.dart';
import 'package:barberia_parcial/util/barberList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'Cita.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.menu,
            color: kPrimaryColor,
          ),
          centerTitle: true,
          title: Text(
            "Barber Shop",
            style: GoogleFonts.bebasNeue(fontSize: 20, color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jpg"),
                radius: 20,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18, 10, 20, 0),
                child: Text(
                  "Servicios",
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black54),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/corte-de-pelo.png",
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Text(
                                "Corte de Pelo",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black54),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/lavado-de-cabello.png",
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Text(
                                "Lavado de Pelo",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black54),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/recorte-de-barba.png",
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Text(
                                "Recorte de barba",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black54),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/secador-de-pelo.png",
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                              child: Text(
                                "Secado de pelo",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black54),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/mascara.png",
                                color: Colors.white,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Text(
                                "Cejas",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18, 10, 20, 0),
                child: Text(
                  "Barberos",
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      BarberList(name: "Jhonny ", imageS: "assets/1.jpg"),
                      BarberList(name: "Marck ", imageS: "assets/barbero2.jpg"),
                      BarberList(name: "Bob ", imageS: "assets/barbero3.jpg"),
                      BarberList(name: "Conde", imageS: "assets/barbero4.jpg"),
                      BarberList(name: "Varo", imageS: "assets/barbero6.jpg"),
                    ],
                  ),
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(16.0),
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Cita();
                              },
                            ),
                          );
                        },
                        child: const Text('Agenda Tu cita Aqui!!'),
                      ),
                    ],
                  ),
                ),

              ),
            )
          ],
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(8.0),
          child: GNav(
            tabBorderRadius: 10,
            hoverColor: Colors.white,
            haptic: true,
            color: kPrimaryColor,
            gap: 8,
            iconSize: 23,
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: "Home",
                backgroundColor: kPrimaryColor,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: Icons.favorite,
                text: "Favorite",
                backgroundColor: kPrimaryColor,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
                backgroundColor: kPrimaryColor,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
              ),

            ],
          ),
        ));
  }
}
