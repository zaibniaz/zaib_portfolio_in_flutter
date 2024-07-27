import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zaib_portfolio/generated/l10n.dart';
import 'package:zaib_portfolio/style/app_theme.dart';
import 'package:zaib_portfolio/style/colors.dart';
import 'package:zaib_portfolio/utils/constants.dart';
import 'package:zaib_portfolio/utils/routes.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(
      desktop: (Constants.halfScreenWidth + Constants.globalPadding) * 2,
      tablet: 880,
      watch: 200,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) {
        return S.of(context).title;
      },
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: ColorPalette.background,
        primaryColor: ColorPalette.background,
        cardTheme: PortfolioTheme.cardTheme(context),
        textTheme: PortfolioTheme.textTheme(context),
        iconTheme: PortfolioTheme.iconTheme(context),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/',
    );
  }
}
