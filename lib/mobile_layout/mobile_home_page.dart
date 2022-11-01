import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:velocity_x/velocity_x.dart';

import '../animations/rotate_icon.dart';
import '../home/home_screen.dart';
import '../models/method.dart';
import '../web_layout/projects_web.dart';
import '../widgets/certifications.dart';
import '../widgets/contacts_mob.dart';
import 'about_mob.dart';
import 'projects_mob.dart';

class HomePageMob extends StatefulWidget {
  const HomePageMob({Key? key}) : super(key: key);

  @override
  State<HomePageMob> createState() => _HomePageMobState();
}

class _HomePageMobState extends State<HomePageMob> {
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpand = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpand != false
                ? setState(
                    () {
                      isExpand = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpand != true
                ? setState(() {
                    print('setState is called');
                    isExpand = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xff000026),
          body: SingleChildScrollView(
              physics: ScrollPhysics(),
              primary: true,
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  height: size.height * 0.14,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ImageRotate(),
                          // Spacer(),
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: DefaultTabController(
                                      animationDuration:
                                          Duration(milliseconds: 1500),
                                      length: 5,
                                      child: TabBar(
                                          indicatorColor: Colors.transparent,
                                          labelColor: Colors.lightBlueAccent,
                                          onTap: (index) async {
                                            _scrollToIndex(index);
                                          },
                                          tabs: const [
                                            Tab(
                                              icon: FaIcon(
                                                FontAwesomeIcons.home,
                                                // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),
                                            ),
                                            Tab(
                                              icon: FaIcon(
                                                FontAwesomeIcons.userGraduate,
                                                // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),
                                            ),
                                            Tab(
                                              icon: FaIcon(
                                                FontAwesomeIcons.laptopCode,
                                                // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),
                                            ),
                                            Tab(
                                              icon: FaIcon(
                                                FontAwesomeIcons.play,
                                                // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),
                                            ),
                                            Tab(
                                              icon: FaIcon(
                                                FontAwesomeIcons.at,
                                                // color: Colors.lightBlueAccent,
                                                size: 20.0,
                                              ),
                                            ),
                                          ])))),
                          // ResumeCard(),
                        ]),
                  ),
                ),
                Row(children: [
                  //all widgets
                  Expanded(
                    child: Container(
                        height: size.height - 82,
                        width: size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomScrollView(
                            controller: _autoScrollController,
                            slivers: [
                              SliverList(
                                  delegate: SliverChildListDelegate([
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,

                                  children: [
                                    //home abt me
                                    _wrapScrollTag(
                                        index: 0, child: HomeScreenMob()),
                                    SizedBox(height: size.height * 0.2),
                                    _wrapScrollTag(
                                        index: 1, child: AboutMeMob()),
                                    SizedBox(height: size.height * 0.2),
                                    _wrapScrollTag(
                                        index: 2, child: CertificationWeb()),
                                    SizedBox(height: size.height * 0.4),
                                    _wrapScrollTag(
                                        index: 3,
                                        child: size.width < 1000
                                            ? ProjectsMob()
                                            : ProjectsWeb()),
                                    SizedBox(height: size.height * 0.2),
                                    SizedBox(
                                      height: 200,
                                    ),
                                    _wrapScrollTag(
                                      index: 4,
                                      child: ContactMobileTab(),
                                    ),
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Made with ",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              color: Colors.white60),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.heart,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          "  in Flutter",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              color: Colors.white60),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ).px16()
                              ])),
                            ],
                          ),
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.06,
                    height: MediaQuery.of(context).size.height - 72,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "pavanmaran19199@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 110,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ).pOnly(right: 4),
                ]),
              ]))),
    );
  }
}
