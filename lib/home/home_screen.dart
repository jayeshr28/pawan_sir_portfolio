import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/method.dart';
import '../widgets/resume_card.dart';

class HomeScreenMob extends StatefulWidget {
  const HomeScreenMob({Key? key}) : super(key: key);

  @override
  State<HomeScreenMob> createState() => _HomeScreenMobState();
}

class _HomeScreenMobState extends State<HomeScreenMob> {
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.1),
        SizedBox(
          height: 60,
          child: DefaultTextStyle(
            style: GoogleFonts.robotoMono(
              fontSize: size.width < 300 ? 15.0 : 20.0,
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
        ).py2(),
        const SizedBox(height: 6.0),
        Text(
          "Pavan Meena",
          style: GoogleFonts.montserrat(
              fontSize: 62, color: Colors.white, fontWeight: FontWeight.bold),
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
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 7.0,
          width: 50,
          child: ColoredBox(
            color: Colors.lightBlueAccent,
          ),
        ),
        size.width > 600
            ? Wrap(children: [
                Container(
                    child: Text(
                  'I am open to make projects for clients on Embedded systems, Robotics, Flutter App development for Android and iOS, IoT etc. ',
                  style: GoogleFonts.robotoMono(
                    fontSize: 15,
                    color: Colors.white60,
                  ),
                  textAlign: TextAlign.center,
                ).pOnly(top: 20))
              ])
            : Row(children: [
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.github),
                    color: Color(0xffffA8B2D1),
                    iconSize: 26.0,
                    hoverColor: Color(0xFF8E24AA),
                    onPressed: () {
                      method.launchURL("https://github.com/Pavanmaran");
                    }),

                IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  color: Color(0xffffA8B2D1),
                  hoverColor: Color(0xFF8E24AA),
                  onPressed: () {
                    method.launchURL(
                        "https://www.linkedin.com/in/pawan-meena-02962b166/");
                  },
                  iconSize: 26.0,
                ),
                IconButton(
                    icon: FaIcon(Icons.call),
                    color: Color(0xffffA8B2D1),
                    hoverColor: Color(0xFF8E24AA),
                    iconSize: 26.0,
                    onPressed: () {
                      method.launchCaller();
                    }),
                IconButton(
                    icon: FaIcon(Icons.mail),
                    hoverColor: Color(0xFF8E24AA),
                    color: Color(0xffffA8B2D1),
                    iconSize: 26.0,
                    onPressed: () {
                      method.launchEmail();
                    }),
                // Divider(thickness: 1,color: Colors.grey.withOpacity(0.6),).px8()
              ]).pOnly(top: 40),
        ResumeCard(
          size2: 130,
        ).pOnly(top: 50)
      ],
    );
  }
}
