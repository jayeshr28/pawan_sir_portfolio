import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawan_sir_portfolio/widgets/certifications.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../animations/rotate_icon.dart';
import '../widgets/left_socials.dart';
import '../widgets/resume_card.dart';
import '../widgets/web_bar_tile.dart';
import 'about_web.dart';
import 'contact_web.dart';
import 'home_screen_web.dart';
import 'projects_web.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
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
    var size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xff000026),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height * 0.14,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ImageRotate(),
                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: DefaultTabController(
                            animationDuration: Duration(milliseconds: 1000),
                            length: 5,
                            child: TabBar(
                              labelPadding: const EdgeInsets.all(0),
                              indicatorColor: Colors.transparent,
                              onTap: (index) async {
                                _scrollToIndex(index);
                              },
                              tabs: const [
                                Tab(
                                  child: WebBarTile(
                                    text: 'HOME',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'ABOUT',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'SERVICES',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'PROJECTS',
                                  ),
                                ),
                                Tab(
                                  child: WebBarTile(
                                    text: 'CONTACT',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ResumeCard(),
                    ],
                  ),
                ),
              ),
              Row(children: [
                //Social Icon
                LeftSocials(),

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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //home abt me
                                  _wrapScrollTag(
                                      index: 0, child: HomeScreenWeb()),
                                  //home abt me end

                                  SizedBox(height: 200),

                                  //about me
                                  _wrapScrollTag(
                                    index: 1,
                                    child: AboutMeWeb(),
                                  ),

                                  SizedBox(
                                    height: 200,
                                  ),

                                  //certifications
                                  _wrapScrollTag(
                                    index: 2,
                                    child: CertificationWeb(),
                                  ),

                                  SizedBox(
                                    height: 200,
                                  ),

                                  //certifications
                                  _wrapScrollTag(
                                      index: 3, child: ProjectsWeb()),
                                  SizedBox(
                                    height: 200,
                                  ),
                                  ContactWeb(),
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                    height: 100,
                                  ),
                                ],
                              )
                            ]))
                          ],
                        ),
                      )),
                ),
              ]),
            ],
          ),
        ));
  }
}
