import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zaib_portfolio/components/card_tag.dart';
import 'package:zaib_portfolio/components/portfolio_card.dart';

import '../utils/constants.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

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
        PortfolioCard(
            child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 4,
                  spacing: 4,
                  children: data.map((t) => CardTag(tag: t)).toList(),
                ))),
      ],
    );
  }

  Widget tabletView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: Constants.cardTitleSpacingTablet),
        PortfolioCard(
            width: double.infinity,
            height: 110,
            child: Wrap(
              direction: Axis.horizontal,
              runSpacing: 4,
              spacing: 4,
              children: data
                  .map((t) => CardTag(
                        tag: t,
                        tagSize: 3,
                      ))
                  .toList(),
            )),
        const SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        const SizedBox(height: Constants.cardTitleSpacingTablet),
        PortfolioCard(
            height: 250,
            child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 4,
                  spacing: 4,
                  children: data.map((t) => CardTag(tag: t)).toList(),
                ))),
        const SizedBox(height: Constants.cardTitleSpacingTablet * 3),
      ],
    );
  }
}

final data = [
  "Android",
  "Kotlin",
  "Java",
  "Flutter",
  "Dart",
  "JetPack Compose",
  "Clean Architecture",
  "MVVM",
  "Version control systems",
  "CI/CD",
  "Printers Integration ( Star | Epson)",
  "Agile development methodologies",
  "XMPP",
  "Payment Processing",
  "Responsive andAdaptive Design",
  "Unit Testing",
  "XML",
  "Code Review",
  "SQLite",
  "Couchbase Lite",
  "MQTT Protocol",
  "Printers Integration",
  " Flow",
  "LiveData",
  "Jira",
  "Agile",
  "Dependency Injection (Hilt/Dagger2)"
];
