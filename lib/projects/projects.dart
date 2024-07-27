import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zaib_portfolio/projects/project_card.dart';
import 'package:zaib_portfolio/projects/project_data.dart';
import 'package:zaib_portfolio/utils/constants.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => desktopView(),
      tablet: (_) => tabletView(),
      mobile: (_) => mobileView(),
    );
  }

  Widget desktopView() {
    return Column(
      children: [
        const SizedBox(height: Constants.aboutDesktopTopPadding),
        ...data.map((d) => ProjectCard(data: d)).toList(),
      ],
    );
  }

  Widget tabletView() {
    return Column(
      children: [
        const SizedBox(height: Constants.cardTitleSpacingTablet),
        ...data.map((d) => ProjectCard(data: d)).toList(),
      ],
    );
  }

  // Widget tabletView() {
  //   return Column(
  //     children: [
  //       const SizedBox(height: Constants.cardTitleSpacingTablet),
  //       GridView.count(
  //         childAspectRatio: Constants.cardAspectRatioTablet,
  //         mainAxisSpacing: Constants.cardSpacing,
  //         crossAxisSpacing: Constants.cardSpacing,
  //         shrinkWrap: true,
  //         crossAxisCount: 2,
  //         children: data.map((d) => ProjectCard(data: d)).toList(),
  //       ),
  //       const SizedBox(height: Constants.cardTitleSpacingTablet * 3),
  //     ],
  //   );
  // }

  Widget mobileView() {
    return Column(
      children: [
        const SizedBox(height: Constants.cardTitleSpacingTablet),
        ...data.map((d) => ProjectCard(data: d)).toList(),
        const SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }
}

final data = [
  ProjectData(
    title: "POS",
    description:
        "Restaurants can be run comfortably through your point-of-sale device. The dual-screen hardware allows real-time visibility of orders.",
    gitHub: "",
    link: "https://innowi.com/restaurant-pos/",
    technologies: [
      "Android",
      "Kotlin",
      "XML",
      "MQTT",
      "Printers Integration",
      "Payment Integration",
    ],
  ),
  ProjectData(
    title: "KIOSK",
    description: "Free up your staff to focus on your customers."
        "kiosk can act as a digital employee while improving efficiency and decreasing labor costs.",
    gitHub: "",
    link: "https://innowi.com/kiosk-ordering/",
    technologies: [
      "Android",
      "Kotlin",
      "XML",
      "MQTT",
      "Printers Integration",
      "Payment Integration",

    ],
  ),
  ProjectData(
    title: "Kitchen Display System",
    description:
        "A Kitchen Display System (KDS) lets you organize your kitchen. Cut-down the hassle!",
    gitHub: "",
    link: "https://innowi.com/kitchen-display-system-kds/",
    technologies: ["Android", "Kotlin", "XML", "MQTT"],
  ),
  ProjectData(
    title: "facelift",
    description:
        "Facelift combines relevant components for social media marketing into a single scalable enterprise solution.",
    gitHub: "",
    link:
        "https://play.google.com/store/apps/details?id=com.facelift.mobile.fcld&hl=en&gl=US",
    technologies: ["Android", "Kotlin", "XML"],
  ),
];
