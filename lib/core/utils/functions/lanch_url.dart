import 'package:bookly/core/utils/functions/cutom_snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlFunction({
  required String url,
  required BuildContext context,
}) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);

    if (!await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  } else {
    customSnackBar(context, 'Could not launch $url');
  }
}
