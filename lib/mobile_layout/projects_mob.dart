import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawan_sir_portfolio/web_layout/project_card.dart';
import 'package:pawan_sir_portfolio/widgets/project_utils.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/method.dart';

class ProjectsMob extends StatelessWidget {
  const ProjectsMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
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
              Text("04. ",
                  style: GoogleFonts.nunito(color: Colors.blue, fontSize: 28)),
              Padding(
                padding: width < 410
                    ? const EdgeInsets.only(right: 10.0)
                    : const EdgeInsets.only(right: 40),
                child: Text(
                  "Projects",
                  style: GoogleFonts.kanit(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: width < 410
              ? const EdgeInsets.only(right: 10.0)
              : const EdgeInsets.only(right: 40),
          child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                  child: Text(
                "These are some of my works",
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.blue),
              ))),
        ),
        SizedBox(
          height: 10,
        ),
        CarouselSlider.builder(
          itemCount: ProjectUtils.titles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ProjectCard(
              banner: ProjectUtils.banners[i],
              projectIcon: ProjectUtils.icons[i],
              projectLink: ProjectUtils.links[i],
              projectTitle: ProjectUtils.titles[i],
              projectDescription: ProjectUtils.description[i],
            ),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        OutlinedButton(
          onPressed: () => method.launchURL("https://github.com/Pavanmaran"),
          child: Text(
            'See More',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
