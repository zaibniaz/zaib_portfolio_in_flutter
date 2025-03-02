import 'package:zaib_portfolio/utils/constants.dart';

class ExperienceData {
  ExperienceData({
    required this.organizationName,
    required this.position,
    required this.description,
    required this.startYearMonth,
    required this.endYearMonth,
  });

  final String organizationName;
  final String position;
  final String description;
  final String startYearMonth;
  final String endYearMonth;
}
