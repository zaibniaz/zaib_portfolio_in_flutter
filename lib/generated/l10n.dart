// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  ///  Dynamic and results-oriented software developer with 8 years of experience in Android development and a recent focus on Flutter over the past 2 years. Proven track record of designing and implementing scalable, high-performance applications for a diverse range of industries. Adept at working with cross-functional teams to deliver projects that exceed expectations. Passionate about staying ahead of the curve with the latest technologies and industry trends to create innovative solutions that drive business success.
  String get aboutDesc {
    return Intl.message(
      'Dynamic and results-oriented software developer with 8 years of experience in Android development and a recent focus on Flutter over the past 2 years. Proven track record of designing and implementing scalable, high-performance applications for a diverse range of industries. Adept at working with cross-functional teams to deliver projects that exceed expectations. Passionate about staying ahead of the curve with the latest technologies and industry trends to create innovative solutions that drive business success.',
      name: 'aboutDesc',
      desc: '',
      args: [],
    );
  }

  /// `{greeting, select, em {Good morning, early bird} m {Good Morning} a {Good Afternoon} e {Good Evening} n {Hi there, night owl} other {Hello}}. I''m `
  String aboutGreeting(Object greeting) {
    return Intl.message(
      '${Intl.select(greeting, {
            'em': 'Good morning, early bird',
            'm': 'Good Morning',
            'a': 'Good Afternoon',
            'e': 'Good Evening',
            'n': 'Hi there, night owl',
            'other': 'Hello'
          })}. I\'\'m ',
      name: 'aboutGreeting',
      desc: '',
      args: [greeting],
    );
  }

  /// `Min`
  String get blogMinutes {
    return Intl.message(
      'Min',
      name: 'blogMinutes',
      desc: '',
      args: [],
    );
  }

  /// `Based on designs by Nicolas Meuzard`
  String get footerCredit {
    return Intl.message(
      'Based on designs by Nicolas Meuzard',
      name: 'footerCredit',
      desc: '',
      args: [],
    );
  }

  /// `Powered by Flutter`
  String get footerPower {
    return Intl.message(
      'Powered by Flutter',
      name: 'footerPower',
      desc: '',
      args: [],
    );
  }

  /// `Looks like you are lost ... on a single page application, duh!`
  String get notFoundDespise {
    return Intl.message(
      'Looks like you are lost ... on a single page application, duh!',
      name: 'notFoundDespise',
      desc: '',
      args: [],
    );
  }

  /// `Take me back to 127.0.0.1`
  String get notFoundHome {
    return Intl.message(
      'Take me back to 127.0.0.1',
      name: 'notFoundHome',
      desc: '',
      args: [],
    );
  }

  /// `Oh no!`
  String get notFoundInterjection {
    return Intl.message(
      'Oh no!',
      name: 'notFoundInterjection',
      desc: '',
      args: [],
    );
  }

  // /// `03.  Blogs`
  // String get tabBlog {
  //   return Intl.message(
  //     '03.  Blogs',
  //     name: 'tabBlog',
  //     desc: '',
  //     args: [],
  //   );
  // }

  /// `01.  Experience`
  String get tabSkills {
    return Intl.message(
      '01.  Skills',
      name: 'tabSkills',
      desc: '',
      args: [],
    );
  }

  /// `02.  Experience`
  String get tabExperience {
    return Intl.message(
      '02.  Experience',
      name: 'tabExperience',
      desc: '',
      args: [],
    );
  }

  /// `03.  Projects`
  String get tabProjects {
    return Intl.message(
      '03.  Projects',
      name: 'tabProjects',
      desc: '',
      args: [],
    );
  }

  /// `Zaib Niaz`
  String get title {
    return Intl.message(
      'Zaib Niaz',
      name: 'title',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
