import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/method.dart';

class HomeScreenWeb extends StatefulWidget {
  const HomeScreenWeb({Key? key}) : super(key: key);

  @override
  State<HomeScreenWeb> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeScreenWeb> {
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        //written info
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.1),
            SizedBox(
              height: 40,
              child: DefaultTextStyle(
                style: GoogleFonts.robotoMono(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText("Hi, Welcome To My Portfolio",
                        speed: Duration(milliseconds: 150)),
                  ],
                  isRepeatingAnimation: false,
                ),
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              "Pawan Meena",
              style: GoogleFonts.sacramento(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 40,
              child: DefaultTextStyle(
                style: GoogleFonts.kanit(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText("App Developer"),
                    FadeAnimatedText("IoT Engineer"),
                    FadeAnimatedText("Freelancer"),
                    FadeAnimatedText("A Friend :)"),
                  ],
                  repeatForever: true,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Wrap(children: [
              Container(
                width: size.width * 0.55,
                child: Text(
                  'I am open to make projects for clients on Embedded systems, Robotics, Flutter App development for Android and iOS, IoT etc. ',
                  style: GoogleFonts.robotoMono(
                    fontSize: 15,
                    color: Colors.white60,
                  ),
                ),
              ),
            ]),
            SizedBox(height: 60),
            Container(
              height: 60.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.lightBlueAccent)),
                    padding: EdgeInsets.all(20.0),
                    primary: Color(0xff000026),
                    textStyle: TextStyle(
                      color: Color.fromRGBO(0, 160, 227, 1),
                    )),
                onPressed: () {
                  method.launchEmail();
                },
                child: Text("Get in Touch", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),

        //image
        Expanded(
          child: Container(
            width: size.width * 0.2,
          ),
        ),
        //image end
      ],
    );
  }
}
