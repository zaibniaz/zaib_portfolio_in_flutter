import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:zaib_portfolio/about/about.dart';
import 'package:zaib_portfolio/about/tabs.dart';
import 'package:zaib_portfolio/components/footer.dart';
import 'package:zaib_portfolio/experience/experience.dart';
import 'package:zaib_portfolio/generated/l10n.dart';
import 'package:zaib_portfolio/projects/projects.dart';
import 'package:zaib_portfolio/skills/skills.dart';
import 'package:zaib_portfolio/style/colors.dart';
import 'package:zaib_portfolio/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static const String route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

  GlobalKey projectKey = GlobalKey();
  GlobalKey experienceKey = GlobalKey();
  GlobalKey skillsKey = GlobalKey();

  // GlobalKey blogKey = GlobalKey();

  List<TabData> tabData = [];

  double skillsPercent = 0;
  double experiencePercent = 1;
  double projectPercent = 2;

  // double blogPercent = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    tabData = [
      TabData(
        globalKey: skillsKey,
        tabName: S.of(context).tabSkills,
      ),
      TabData(
        globalKey: experienceKey,
        tabName: S.of(context).tabExperience,
      ),
      TabData(
        globalKey: projectKey,
        tabName: S.of(context).tabProjects,
        isSelected: true,
      ),
      // TabData(
      //   globalKey: blogKey,
      //   tabName: S.of(context).tabBlog,
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Constants.globalPadding),
        child: ScreenTypeLayout.builder(
          desktop: (context) => desktopView(),
          tablet: (context) => tabletView(context),
          mobile: (context) => mobileView(context),
        ),
      ),
    );
  }

  Widget desktopView() {
    return Row(
      children: [
        Expanded(child: Container()),
        SizedBox(
          width: Constants.halfScreenWidth,
          child: About(tabData: tabData),
        ),
        SizedBox(
          width: Constants.halfScreenWidth,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            child: Column(
              children: [
                VisibilityDetector(
                  key: Key(tabData[0].tabName),
                  child: Skills(key: skillsKey),
                  onVisibilityChanged: skillsVisibility,
                ),
                VisibilityDetector(
                  key: Key(tabData[1].tabName),
                  child: Experience(key: experienceKey),
                  onVisibilityChanged: experienceVisibility,
                ),
                VisibilityDetector(
                  key: Key(tabData[2].tabName),
                  child: Projects(key: projectKey),
                  onVisibilityChanged: projectVisibility,
                ),

                const SizedBox(height: Constants.aboutDesktopBottomPadding),
              ],
            ),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }

  Widget tabletView(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          About(tabData: tabData),
          const SizedBox(height: 100),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(Constants.cardMargin),
              child: Text(
                S.of(context).tabSkills,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const Skills(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(Constants.cardMargin),
              child: Text(
                S.of(context).tabExperience,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const Experience(),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(Constants.cardMargin),
              child: Text(
                S.of(context).tabProjects,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          const Projects(),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Padding(
          //     padding: const EdgeInsets.all(Constants.cardMargin),
          //     child: Text(
          //       S.of(context).tabBlog,
          //       style: Theme.of(context).textTheme.headlineSmall,
          //     ),
          //   ),
          // ),
          // Experience(),
          const Footer(),
        ],
      ),
    );
  }

  Widget mobileView(BuildContext context) {
    List<Widget> mobileWidgets = [
      About(tabData: tabData),
      const SizedBox(height: 50),
      skillsHeader(),
      experienceHeader(),
      projectHeader(),
      // blogHeader(),
      const Footer(),
    ];
    return ListView.builder(
      itemCount: mobileWidgets.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return mobileWidgets[index];
      },
    );
  }

  Widget projectHeader() {
    return StickyHeader(
      header: Container(
        padding: const EdgeInsets.only(bottom: 8),
        width: double.infinity,
        color: ColorPalette.background,
        child: Padding(
          padding: const EdgeInsets.all(Constants.cardMargin),
          child: Text(
            S.of(context).tabProjects.split("  ")[1],
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
      content: const Projects(),
    );
  }

  Widget experienceHeader() {
    return StickyHeader(
      header: Container(
        padding: const EdgeInsets.only(bottom: 8),
        width: double.infinity,
        color: ColorPalette.background,
        child: Padding(
          padding: const EdgeInsets.all(Constants.cardMargin),
          child: Text(
            S.of(context).tabExperience.split("  ")[1],
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
      content: const Experience(),
    );
  }

  Widget skillsHeader() {
    return StickyHeader(
      header: Container(
        padding: const EdgeInsets.only(bottom: 8),
        width: double.infinity,
        color: ColorPalette.background,
        child: Padding(
          padding: const EdgeInsets.all(Constants.cardMargin),
          child: Text(
            S.of(context).tabSkills.split("  ")[1],
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
      content: const Skills(),
    );
  }

  // Widget blogHeader() {
  //   return StickyHeader(
  //     header: Container(
  //       padding: EdgeInsets.only(bottom: 8),
  //       width: double.infinity,
  //       color: ColorPalette.background,
  //       child: Padding(
  //         padding: const EdgeInsets.all(Constants.cardMargin),
  //         child: Text(
  //           S.of(context).tabBlog.split("  ")[1],
  //           style: Theme.of(context).textTheme.headlineSmall,
  //         ),
  //       ),
  //     ),
  //     content: Experience(),
  //   );
  // }

  void projectVisibility(VisibilityInfo visibility) {
    projectPercent = visibility.visibleFraction;
    handleChange();
  }

  void experienceVisibility(VisibilityInfo visibility) {
    experiencePercent = visibility.visibleFraction;
    handleChange();
  }

  void skillsVisibility(VisibilityInfo visibility) {
    skillsPercent = visibility.visibleFraction;
    handleChange();
  }

  // void blogVisibility(VisibilityInfo visibility) {
  //   blogPercent = visibility.visibleFraction;
  //   handleChange();
  // }


  void handleChange() {
    if (skillsPercent > experiencePercent && skillsPercent > projectPercent) {
      setAllFalse();
      setState(() {
        tabData[0].isSelected = true;
      });
    }
    if (experiencePercent > skillsPercent && experiencePercent > projectPercent) {
      setAllFalse();
      setState(() {
        tabData[1].isSelected = true;
      });
    }

    if (projectPercent > skillsPercent && projectPercent > experiencePercent) {
      setAllFalse();
      setState(() {
        tabData[2].isSelected = true;
      });
    }
  }

  void setAllFalse() {
    tabData.forEach((d) {
      d.isSelected = false;
    });
  }
}
