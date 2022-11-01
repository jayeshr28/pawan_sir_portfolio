import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/skills.dart';

class AboutMeMob extends StatelessWidget {
  const AboutMeMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.1,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.4),
                      ).p16(),
                    ),
                    Text(
                      "About Me",
                      style: GoogleFonts.lato(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.4),
                      ).p16(),
                    ),
                  ],
                ),
              ).py16(),
              Container(height: 20),
              CircleAvatar(
                  child: Image.asset('assets/images/img.jpg'), radius: 120),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Who am I?",
                style: GoogleFonts.kellySlab(
                  fontSize: 18,
                  color: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "I'm Pavan Meena",
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                // width: size.width*0.8,

                child: Text(
                  "A IoT Engineer, Freelancer, App Developer",
                  style: GoogleFonts.ptSans(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // width: size.width*0.45,

                child: Wrap(
                  children: [
                    Text(
                      "I am open to make projects for clients on Embedded systems, Robotics, Flutter App development for Android and iOS, IoT etc. I have worked for Colleges students who approach me for there college projects.From YouTube channel also some clients make deals for there project based requirements.Some Villagers said they need my IoT based motors starter.",
                      style: GoogleFonts.poppins(
                        color: Colors.white60,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ).py2(),
                  ],
                ),
              ).py2(),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                // width: size.width*0.45,
                color: Colors.grey.withOpacity(0.7),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  "Technologies I have been working with Recently:",
                  style: GoogleFonts.nunito(
                    color: Colors.lightBlueAccent,
                    fontSize: 15,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // width: size.width*0.4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Skills(text: "Embedded system"),
                        Skills(
                            text: "PCB (Circuit) designing and development."),
                        Skills(text: "Data analytics in Python"),
                        Skills(text: "Microcontrollers"),
                        Skills(text: "Flutter"),
                      ],
                    ),
                    Column(
                      children: const [
                        Skills(text: "Embedded C"),
                        Skills(text: "Arduino"),
                        Skills(text: "PHP (basic)"),
                        Skills(text: "Dart"),
                        Skills(text: "MQTT")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                // width: size.width*0.45,
                color: Colors.grey.withOpacity(0.7),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // width: size.width*0.4,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name : Pavan Meena",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white))
                            .p4(),
                        Text(
                          "Email : pavanmaran19199@gmail.com",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ).p4()
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: size.width * 0.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resume",
                          style: GoogleFonts.ptSans(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 1,
                    ),

                    // Wrap(
                    //   children: [
                    //     Image.asset('assets/images/cloud.png',height: 65 ),
                    //     Image.asset('assets/images/flutttter.png', height: 65 ),
                    //     Image.asset('assets/images/andstudio.png', height: 65),
                    //   ],
                    // )
                  ],
                ),
              )
            ]));
  }
}
