// يوفّر WebStorage على الويب فقط، ويستبدله بنسخة آمنة على الـ VM/الجوال.
// هذا يمنع استيراد dart:html في اختبارات Flutter التي تعمل على الـ VM.
export 'web/web_storage_stub.dart'
    if (dart.library.html) 'web/web_storage_web.dart';
