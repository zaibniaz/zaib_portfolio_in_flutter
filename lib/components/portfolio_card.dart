import 'package:flutter/material.dart';
import 'package:zaib_portfolio/components/scale_animator.dart';
import 'package:zaib_portfolio/utils/constants.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    Key? key,
    this.height = 200,
    this.width = Constants.cardAspectRatioDesktop * Constants.cardHeight,
    this.cursor = SystemMouseCursors.basic,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final double height;
  final double width;
  final MouseCursor cursor;

  @override
  Widget build(BuildContext context) {
    return ScaleAnimator(
      cursor: cursor,
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: Constants.cardPaddingVert,
            horizontal: Constants.cardPaddingHori,
          ),
          child: child,
        ),
      ),
    );
  }
}
