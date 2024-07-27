import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:zaib_portfolio/utils/constants.dart';
import 'dart:html' as html;
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  final iconSize = Constants.faIconSizeRegular;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/me.webp"),
          minRadius: 30,
        ),
        const SizedBox(width: 50),
        contactIcon(
          iconData: FontAwesomeIcons.briefcase,
          url: "assets/zaib_niaz_snr_android_resume.pdf",
          tooltip: "Zaib's Resume",
          isResume: true,
        ),
        contactIcon(
          iconData: FontAwesomeIcons.solidEnvelope,
          url: "mailto:zaib_niaz@hotmail.com",
          tooltip: "Email Zaib",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.facebook,
          url: "https://www.facebook.com/zaib.niaz007",
          tooltip: "Zaib's Facebook profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.github,
          url: "https://github.com/zaibniaz",
          tooltip: "Zaib's GitHub profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.linkedinIn,
          url: "https://www.linkedin.com/in/zaib-niaz/",
          tooltip: "Zaib's LinkedIn profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.stackOverflow,
          url: "https://stackoverflow.com/users/5449204/zaib-niaz",
          tooltip: "Zaib's StackOverflow profile",
        ),
        contactIcon(
          iconData: FontAwesomeIcons.upwork,
          url: "https://www.upwork.com/freelancers/zaibniaz",
          tooltip: "Zaib's Upwork profile",
        ),
      ],
    );
  }

  Widget contactIcon({
    required IconData iconData,
    required String url,
    required String tooltip,
    bool isResume=false,
  }) {
    return IconButton(
      onPressed: () {
        if (isResume) {
          downloadPdfFromAssets(url);
        }
        else {
          launchUrlString(url);
        }
      },
      tooltip: tooltip,
      icon: FaIcon(
        iconData,
        size: iconSize,
      ),
    );
  }



  Future<void> downloadPdfFromAssets(String assetPath) async {
    try {
      // Load PDF from assets
      final ByteData data = await rootBundle.load(assetPath);
      final Uint8List bytes = data.buffer.asUint8List();

      // Create a blob from the bytes
      final blob = html.Blob([bytes], 'application/pdf');

      // Create a download link and click it
      final url = html.Url.createObjectUrlFromBlob(blob);
      html.AnchorElement(href: url)
        ..setAttribute('download', 'zaib_niaz_snr_android_dev.pdf')
        ..click();
      html.Url.revokeObjectUrl(url);
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
    }
  }
}


