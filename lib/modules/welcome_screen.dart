import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelea_app/modules/travel_homepage.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8c784),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/258463-P4SWWP-49.jpg',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 25.0, top: 50.0, bottom: 20.0, right: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Beauty Of Journey',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 60.0, fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    'Everything you can imagine, is here',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black54),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white, // Container background color
                      ),
                      margin: const EdgeInsets.only(bottom: 8.0),
                      child: SwipeButton(
                        activeThumbColor: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        activeTrackColor: Colors.white,
                        height: 70.0,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 35.0),
                          child: Text(
                            "Swipe to Explore Now",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0),
                          ),
                        ),
                        onSwipe: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  const TravelHomePage(),
                              ));
                        },
                      )),
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
