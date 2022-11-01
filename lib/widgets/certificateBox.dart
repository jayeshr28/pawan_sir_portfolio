import 'package:flutter/material.dart';

import 'certificates_data.dart';

class CertificateBox extends StatelessWidget {
  const CertificateBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          WorkDataUI(
              title:
                  "Research & Development Engineer at Scientech Technology Pvt Ltd.",
              subTitle:
                  "Testing and Developing Embedded systems-based projects.\nResearching on new tech projects.",
              duration: "Sep 2021 - present",
              url: ""),
          SizedBox(
            height: 5,
          ),
          WorkDataUI(
            title: "Embedded systems Engineer intern at Mahindra TEQO Pvt ltd.",
            subTitle:
                "Developing Embedded systems-based projects.\n Working on surveillance security robots.",
            duration: "Aug 2021 - Sep 2021",
            url: "",
          ),
          SizedBox(
            height: 5,
          ),
          WorkDataUI(
            title: "Self Employed (Freelancer)",
            subTitle:
                "Projects :\nIoT chatBot Android App in java and PCB for hardware IoT system. Client:- Aditi Shrivastava, Bhopal.\nVoice-controlled virtual assistant in Flutter. 2 Client fromYouTube channel.\n IoT-based 3 Phase motor starter. 3 Clients from villageKankariya (MP) and 1 from Berasia Bhopal. ",
            duration: "Jan 2021 - Dec 2021",
            url: "",
          ),
          SizedBox(
            height: 5,
          ),
          WorkDataUI(
            title:
                "DRMZ automation Pvt ltd. , Bhopal - Embedded system and IoT Intern",
            subTitle:
                "Developing complete projects on IoT and embedded systems.\nCircuit designing and making PCB for Projects.\nResearching different microcontrollers and electronic devices.",
            duration: "Feb 2021 - July 2021",
            url: "",
          ),
          SizedBox(
            height: 10,
          ),
          WorkDataUI(
            title: "SN Technology, Bhopal - IoT Projects Intern",
            subTitle:
                "Helped Team to design the project structure.\nIntroduced products to customers in there's field and didmarket surveys.\nDid the coding part that was in the Arduino language of theproject.\nMade an android app in java to control the hardware of Project.",
            duration: "Feb 2021 - July 2021",
            url: "",
          ),
          SizedBox(
            height: 10.0,
          ),
        ]);
  }
}
