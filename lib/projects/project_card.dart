import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:zaib_portfolio/components/card_tag.dart';
import 'package:zaib_portfolio/components/portfolio_card.dart';
import 'package:zaib_portfolio/projects/project_data.dart';
import 'package:zaib_portfolio/style/colors.dart';
import 'package:zaib_portfolio/utils/constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ProjectData data;

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:4),
                  child: FaIcon(
                    FontAwesomeIcons.screwdriverWrench,
                    size: Constants.faIconSizeCardHeader,
                    color: ColorPalette.dullWhite,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Wrap(
                    spacing: 2,
                    runSpacing: 2,
                    children:
                        data.technologies.map((t) => CardTag(tag: t)).toList(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12,bottom: 12),
            child: Text(
              data.title,
              style: Theme.of(context).textTheme.titleLarge
            ),
          ),
          Text(
            data.description,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (data.gitHub.isNotEmpty)
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: Constants.faIconSizeCard + 2,
                    color: ColorPalette.dullWhite,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                  splashRadius: Constants.cardIconSplash,
                  onPressed: () {
                    launchUrlString(data.gitHub);
                  },
                ),
              if (data.link.isNotEmpty) const SizedBox(width: 8),
              if (data.link.isNotEmpty)
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.upRightFromSquare,
                    size: Constants.faIconSizeCard,
                    color: ColorPalette.dullWhite,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
                  splashRadius: Constants.cardIconSplash,
                  onPressed: () {
                    launchUrlString(data.link);
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
