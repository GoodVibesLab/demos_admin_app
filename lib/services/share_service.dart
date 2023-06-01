import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:share_plus/share_plus.dart';

import '../models/poll.dart';

class ShareService {

  static Future<void> sharePoll(Poll poll) async {
    final dynamicLinkParams = DynamicLinkParameters(
      link: Uri.parse("https://goodvibeslab.app/demos/?pollId=${poll.id}"),
      uriPrefix: "https://demosapp.page.link",
      androidParameters: const AndroidParameters(packageName: "com.goodvibeslab.demos"),
      iosParameters: const IOSParameters(bundleId: "com.goodvibeslab.demos-app"),
    );
    final dynamicLink =
    await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);

    debugPrint(dynamicLink.shortUrl.toString());

    Share.share(dynamicLink.shortUrl.toString());
  }

}