import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/method.dart';
//
// class ProjectCard extends StatefulWidget {
//   final String? banner;
//   final String? projectLink;
//   final String? projectIcon;
//   final String projectTitle;
//   final String projectDescription;
//   final IconData? projectIconData;
//
//   const ProjectCard({
//     Key? key,
//     this.banner,
//     this.projectIcon,
//     this.projectLink,
//     this.projectIconData,
//     required this.projectTitle,
//     required this.projectDescription,
//   }) : super(key: key);
//   @override
//   ProjectCardState createState() => ProjectCardState();
// }
//
// class ProjectCardState extends State<ProjectCard> {
//   bool isHover = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Method method = Method();
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//
//     return InkWell(
//       hoverColor: Colors.transparent,
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       onTap: widget.projectLink == null
//           ? () {}
//           : () => method.launchURL(
//                 widget.projectLink!,
//               ),
//       onHover: (isHovering) {
//         if (isHovering) {
//           setState(() {
//             isHover = true;
//           });
//         } else {
//           setState(() {
//             isHover = false;
//           });
//         }
//       },
//       child: Container(
//         margin: Space.h,
//         padding: Space.all(),
//         width: 370,
//         height: 250,
//         decoration: BoxDecoration(
//           color: Colors.grey[900],
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: isHover
//               ? [
//                   BoxShadow(
//                     color: Colors.black38,
//                     blurRadius: 12.0,
//                     offset: const Offset(0.0, 0.0),
//                   )
//                 ]
//               : [
//                   BoxShadow(
//                     color: Colors.indigo,
//                     blurRadius: 12.0,
//                     offset: const Offset(0.0, 0.0),
//                   )
//                 ],
//         ),
//         child: isHover
//             ? Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   Container(
//                     color: Colors.blue,
//                   )
//                 ],
//               )
//             : Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       widget.projectIcon != null
//                           ? (width > 1135 || width < 950)
//                               ? Image.asset(
//                                   widget.projectIcon!,
//                                   height: height * 0.05,
//                                 )
//                               : Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Image.asset(
//                                       widget.projectIcon!,
//                                       height: height * 0.03,
//                                     ),
//                                     SizedBox(
//                                       width: width * 0.01,
//                                     ),
//                                     Text(
//                                       widget.projectTitle,
//                                       style: TextStyle(
//                                           fontSize: 17, color: Colors.white),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ],
//                                 )
//                           : Container(),
//                       widget.projectIconData != null
//                           ? Icon(
//                               widget.projectIconData,
//                               color: Colors.blue,
//                               size: height * 0.1,
//                             )
//                           : Container(),
//                       (width > 1135 || width < 950)
//                           ? SizedBox(
//                               height: height * 0.02,
//                             )
//                           : const SizedBox(),
//                       (width > 1135 || width < 950)
//                           ? Text(
//                               widget.projectTitle,
//                               style:
//                                   TextStyle(fontSize: 17, color: Colors.white),
//                               textAlign: TextAlign.center,
//                             )
//                           : Container(),
//                       SizedBox(
//                         height: height * 0.01,
//                       ),
//                       Text(
//                         widget.projectDescription,
//                         textAlign: TextAlign.center,
//                       ),
//                       SizedBox(
//                         height: height * 0.01,
//                       ),
//                     ],
//                   ),
//                   AnimatedOpacity(
//                     duration: const Duration(milliseconds: 400),
//                     opacity: isHover ? 0.0 : 1.0,
//                     child: FittedBox(
//                       fit: BoxFit.fill,
//                       child: widget.banner != null
//                           ? Image.asset(
//                               widget.banner!,
//                             )
//                           : Container(),
//                     ),
//                   ),
//                 ],
//               ),
//       ),
//     );
//   }
// }

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard(
      {Key? key,
      this.banner,
      this.projectLink,
      this.projectIcon,
      required this.projectTitle,
      required this.projectDescription,
      this.projectIconData})
      : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    Method method = Method();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        method.launchURL(widget.projectLink!);
      },
      onHover: (isHovering) {
        if (isHovering == true) {
          setState(() {
            isHover = true;
          });
        }
      },
      child: Container(
          margin: const EdgeInsets.all(21),
          padding: const EdgeInsets.all(10),
          width: 370,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(10),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.indigo,
                      blurRadius: 10,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: isHover
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: Colors.blue,
                    )
                  ],
                )
              : Stack(
                  fit: StackFit.expand,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      opacity: isHover ? 0.0 : 1.0,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: widget.banner != null
                            ? Image.asset(
                                widget.banner!,
                              )
                            : Container(),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.projectIcon != null
                            ? (width > 1135 || width < 950)
                                ? Image.asset(
                                    widget.projectIcon!,
                                    height: height * 0.05,
                                  )
                                : Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        widget.projectIcon!,
                                        height: height * 0.03,
                                      ),
                                      SizedBox(
                                        width: width * 0.01,
                                      ),
                                      Text(
                                        widget.projectTitle,
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )
                            : Container(),
                        widget.projectIconData != null
                            ? Icon(
                                widget.projectIconData,
                                color: Colors.blue,
                                size: height * 0.1,
                              )
                            : Container(),
                        (width > 1135 || width < 950)
                            ? SizedBox(
                                height: height * 0.02,
                              )
                            : const SizedBox(),
                        (width > 1135 || width < 950)
                            ? Text(
                                widget.projectTitle,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                                textAlign: TextAlign.center,
                              )
                            : Container(),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          widget.projectDescription,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  ],
                )),
    );
  }
}
