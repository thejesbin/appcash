import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class FirebaseDynamiclinkService {
  FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
  static Future<String> createDynamicLink(String referCode) async {
    String _linkMessage;
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://appcashrefer.page.link',
      link: Uri.parse('https://appcashrefer.page.link/$referCode'),
      androidParameters: const AndroidParameters(
        packageName: 'com.steycode.appcash',
        minimumVersion: 0,
      ),
      iosParameters: const IOSParameters(
        bundleId: 'com.steycode.appcash',
        minimumVersion: '0',
      ),
    );
    Uri url;
    FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
    final ShortDynamicLink shortLink =
        await dynamicLinks.buildShortLink(parameters);
    url = shortLink.shortUrl;
    _linkMessage = url.toString();
    return _linkMessage;
  }
}
