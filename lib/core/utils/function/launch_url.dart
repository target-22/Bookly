import 'package:url_launcher/url_launcher.dart';

import 'custom_snack_bar.dart';

Future<void> launchCustomUr(context, String? url) async {
  if (url != null) {
    final link = Uri.parse(url);
  if (!await launchUrl(link, mode: LaunchMode.externalApplication)) {
    customSnackBar(context, 'Cannot launch $url');
  }
  }
}
