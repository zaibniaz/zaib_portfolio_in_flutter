import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zaib_portfolio/experience/experience_card.dart';
import 'package:zaib_portfolio/experience/experience_data.dart';
import 'package:zaib_portfolio/utils/constants.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

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
        ...data.map((d) => ExperienceCard(data: d)),
      ],
    );
  }

  Widget tabletView() {
    return Column(
      children: [
        const SizedBox(height: Constants.aboutTabletTopPadding),
        ...data.map((d) => ExperienceCard(data: d)),
      ],
    );
  }
  //
  // Widget tabletView(BuildContext context) {
  //   return Column(
  //     children: [
  //       const SizedBox(height: Constants.cardTitleSpacingTablet),
  //       GridView.count(
  //         mainAxisSpacing: Constants.cardSpacing,
  //         crossAxisSpacing: Constants.cardSpacing,
  //         shrinkWrap: true,
  //         crossAxisCount: 2,
  //         children: data.map((d) => ExperienceCard(data: d)).toList(),
  //       ),
  //       const SizedBox(height: Constants.cardTitleSpacingTablet * 3),
  //     ],
  //   );
  // }

  Widget mobileView() {
    return Column(
      children: [
        const SizedBox(height: Constants.cardTitleSpacingMobile),
        ...data.map((d) => ExperienceCard(data: d)),
        const SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }
}

final data = [
  ExperienceData(
    organizationName: "Innowi Inc.",
    position: "Senior Android/Flutter Developer",
    description:
        "⦾ Successfully implemented fault-tolerant receipt printing, cutting printer expenses by half."
        "\n⦾ Implemented data monitoring system that uses MQTT protocol for the real-time tracking and ensuring continuous operational integrity and efficiency."
        "\n⦾ Integrated offline support to ensure that all data is securely stored on the device and automatically processed when connectivity is re-established."
        "\n⦾ Achieved 5000 daily orders through architecture improvements."
        "\n⦾ Developed Flutter-based admin app for seamless management of sales, menu updates, and cross-platform compatibility with iOS and Android."
        "\n⦾ PR Reviews and Feedback."
        "\n⦾ Guide and mentor junior developers and enforce coding standards.",
    startYearMonth: "May 21",
    endYearMonth: "Present",
  ),
  ExperienceData(
    organizationName: "Softech Systems Pvt. Ltd.",
    position: "Senior Android/Flutter Developer",
    description:
        "\n⦾ Worked on scalable enterprise solution.Take full control of all your social media channels."
        "\n⦾ Created reusable components for Android applications to increase development speed."
        "\n⦾ Integrated third-party APIs into existing applications."
        "\n⦾ Lead the development team in writing clean, efficient, and maintainable code."
        "\n⦾ Ensuring a high crash-free rate and maintaining application compatibility across various screen sizes."
        "\n⦾ Emphasized Test-Driven Development (TDD) in an agile environment.",
    startYearMonth: "April 20",
    endYearMonth: "June 21",
  ),
  ExperienceData(
    organizationName: "LOGICON, LLC",
    position: "Android Developer",
    description:
        "⦾ Mainly worked on android projects using Retrofit, Firebase, Google material Design and third parties API's. "
        "\n⦾ Collaborated with backend developers to integrate RESTful APIs into the mobile apps."
        "\n⦾ Translating design concepts into functional features."
        "\n⦾ Conducting research and development activities for both ongoing and upcoming projects.",
    startYearMonth: "Jun 19",
    endYearMonth: "March 20",
  ),
  ExperienceData(
    organizationName: "SDSol Technologies",
    position: "Android Developer",
    description:
        "⦾ Completed different projects for different clients including Health, Social, Education, Hardware etc. "
        "\n⦾ Explored all these domains of Mobile Application Development."
        "\n⦾ Participated in daily standup meetings with other engineers, QA testers, and project managers to discuss progress updates on current tasks.",
    startYearMonth: "Dec 17",
    endYearMonth: "Jun 19",
  ),
];
