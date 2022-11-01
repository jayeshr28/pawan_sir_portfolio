import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/skills.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.grey.withOpacity(0.4),
                ).p16()),
                Text("02. ",
                    style:
                        GoogleFonts.nunito(color: Colors.blue, fontSize: 28)),
                Text(
                  "About Me",
                  style: GoogleFonts.kanit(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ).pOnly(right: 60),
              ],
            ),
          ),
          Wrap(
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Image.asset("assets/images/img.jpg",
                            width: size.width * 0.30,
                            height: size.width < 1300
                                ? size.height * 0.65
                                : size.height * 0.75)
                        .px12(),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: size.width * 0.45,
                        child: Wrap(children: [
                          Text(
                            "A IoT Engineer, Freelancer, App Developer",
                            style: GoogleFonts.ptSans(
                              color: Colors.white,
                              fontSize: 21,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ]),
                      ),
                      Container(
                        width: size.width * 0.45,
                        child: Wrap(
                          children: [
                            Text(
                              "I am open to make projects for clients on Embedded systems, Robotics, Flutter App development for Android and iOS, IoT etc. I have worked for Colleges students who approach me for there college projects.From YouTube channel also some clients make deals for there project based requirements.Some Villagers said they need my IoT based motors starter.",
                              style: GoogleFonts.poppins(
                                color: Colors.white60,
                                fontSize: 15,
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
                        width: size.width * 0.45,
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
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
                        child: Wrap(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: const [
                                    Skills(text: "Embedded system"),
                                    Skills(
                                        text:
                                            "PCB (Circuit) designing and development."),
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
                                ),
                              ]),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1,
                        width: size.width * 0.45,
                        color: Colors.grey.withOpacity(0.7),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: size.width * 0.4,
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
                                  "Age : 23",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ).p4()
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email : pavanmaran19199@gmail.com",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white))
                                    .p4(),
                                Text(
                                  "From : Indore,MP(INDIA)",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
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
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resume",
                                  style: GoogleFonts.ptSans(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                )),
                            Wrap(
                              children: [
                                Image.asset("images/cloud.png",
                                    width: size.width * 0.11, height: 65),
                                Image.asset("images/flutttter.png",
                                    width: size.width * 0.08, height: 65),
                                Image.asset("images/andstudio.png",
                                    width: size.width * 0.08, height: 65),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ).p32()
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
