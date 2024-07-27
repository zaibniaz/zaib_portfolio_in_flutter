// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(greeting) => "${Intl.select(greeting, {
            'em': 'Good morning, early bird',
            'm': 'Good Morning',
            'a': 'Good Afternoon',
            'e': 'Good Evening',
            'n': 'Hi there, night owl',
            'other': 'Hello',
          })}. I\'\'m ";

  final messages = _notInlinedMessages(_notInlinedMessages);

  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutDesc": MessageLookupByLibrary.simpleMessage(
            "Dynamic and results-oriented software developer with 8 years of experience in Android development and a recent focus on Flutter over the past 2 years. Proven track record of designing and implementing scalable, high-performance applications for a diverse range of industries. Adept at working with cross-functional teams to deliver projects that exceed expectations. Passionate about staying ahead of the curve with the latest technologies and industry trends to create innovative solutions that drive business success."),
        "aboutGreeting": m0,
        "blogMinutes": MessageLookupByLibrary.simpleMessage("Min"),
        "footerCredit": MessageLookupByLibrary.simpleMessage(
            "Based on designs by Nicolas Meuzard"),
        "footerPower":
            MessageLookupByLibrary.simpleMessage("Powered by Flutter"),
        "notFoundDespise": MessageLookupByLibrary.simpleMessage(
            "Looks like you are lost ... on a single page application, duh!"),
        "notFoundHome":
            MessageLookupByLibrary.simpleMessage("Take me back to 127.0.0.1"),
        "notFoundInterjection": MessageLookupByLibrary.simpleMessage("Oh no!"),
        "tabBlog": MessageLookupByLibrary.simpleMessage("03.  Blogs"),
        "tabExperience":
            MessageLookupByLibrary.simpleMessage("01.  Experience"),
        "tabProjects": MessageLookupByLibrary.simpleMessage("02.  Projects"),
        "title": MessageLookupByLibrary.simpleMessage("Zaib Niaz")
      };
}
