// ignore: avoid_web_libraries_in_flutter, deprecated_member_use
import 'dart:html' as html;

const String _scriptId = 'elzefir-adsbygoogle';
const String _scriptSrc =
    'https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-6433776359670248';

/// يحقن سكربت AdSense بعد الموافقة، ويُزيله عند سحبها.
void syncAdsConsent(bool granted) {
  final script = html.document.getElementById(_scriptId);
  if (!granted) {
    script?.remove();
    return;
  }
  if (script != null) {
    return;
  }
  html.document.head?.children.add(
    html.ScriptElement()
      ..id = _scriptId
      ..async = true
      ..src = _scriptSrc
      ..setAttribute('crossorigin', 'anonymous'),
  );
}
