// يحقن إعلانات Google من Dart فقط عند وجود موافقة، ويستبدل نسخة الويب بنسخة فارغة على الـ VM.
export 'ads_consent_bridge_stub.dart'
    if (dart.library.html) 'ads_consent_bridge_web.dart';
