import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zaib_portfolio/components/portfolio_card.dart';
import 'package:zaib_portfolio/utils/constants.dart';
import 'package:zaib_portfolio/experience/experience_data.dart';
import 'package:zaib_portfolio/components/card_tag.dart';
import 'package:zaib_portfolio/style/colors.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ExperienceData data;

  @override
  Widget build(BuildContext context) {
    return PortfolioCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(
                FontAwesomeIcons.briefcase,
                size: Constants.faIconSizeCardHeader,
                color: ColorPalette.dullWhite,
              ),
              CardTag(tag: data.position),
            ],
          ),
          Text(
            data.organizationName,
            style: Theme.of(context).textTheme.titleLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              data.description,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(data.startYearMonth),
              Text(" - "),
              Text(data.endYearMonth),
            ],
          ),
        ],
      ),
    );
  }
}
