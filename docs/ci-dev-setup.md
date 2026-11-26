# إعداد CI/Nشر لمشروع الزفر (بيئة dev)

المشروع **ويب فقط**. لا يوجد توزيع أندرويد ولا Shorebird هنا؛ هذه مسؤولية لوحة التحكم في مستودع منفصل.

## نقطة الدخول

- الملف: `.github/workflows/ci-cd-pipeline.yml`
- يُشغّل عند كل `push` وأيضاً `workflow_dispatch`.
- يستدعي من مستودع `ci_cd_pipeline` وظيفتين فقط:
  - `auto-pr.yml` : ينشئ PR تلقائياً من الفروع غير `dev`.
  - `50-firebase-hosting.yml` : يبني الويب وينشره على Firebase Hosting.

## بيئة `dev`

| العنصر | القيمة |
|---|---|
| متغير البيئة `PROJECT_ID` | `elzefir-dev` |
| متغير المستودع `PROJECT_ID` (احتياطي) | `elzefir-dev` |
| سر البيئة `FIREBASE_SERVICE_ACCOUNT` | مفتاح حساب خدمة لمشروع `elzefir-dev` |

أمر البناء في النشر:

```bash
flutter build web --release --dart-define=ENV=dev
```

## تدوير مفتاح النشر

عند ظهور `invalid_grant: Invalid JWT Signature` أو رفض توقيع المفتاح:

1. أنشئ مفتاح حساب خدمة JSON جديداً في مشروع `elzefir-dev` بصلاحيات Firebase Hosting.
2. حدّث **سر البيئة** وليس سر المستودع فقط:

```bash
gh secret set FIREBASE_SERVICE_ACCOUNT --env dev < /path/to/key.json
```

لا تُضف ملف المفتاح إلى Git أبداً، ولا تكتب محتواه في السجلات أو رسائل الالتزام.

## حدث معروف

الدفع إلى فرع غير `dev` يعمل في بيئة باسم الفرع، وتلك البيئة لا تحتوي على أسرار، فيسقط النشر إلى السر الاحتياطي على مستوى المستودع ويفشل. هذا سلوك سابق ومقبول؛ المسار المعتمد للنشر هو دمج الفرع في `dev` أولاً.

## تنظيف الأسرار القديمة

حُذفت الأسماء التي لا يستخدمها أي مسار حالياً:

- `FIREBASE_SERVICE_ACCOUNT_ELZEFIR_DBB8D` على مستوى المستودع (كان مرتبطاً بمشروع محذوف).
- `FTP_USERNAME` و `FTP_PASSWORD` و `SSH_PRIVATE_KEY` في بيئة `dev`.

بقي `FIREBASE_ADMIN_SDK` و `FIREBASE_SERVICE_ACCOUNT` على مستوى المستودع لأن مسارات أخرى قد تستخدمهما كخيار احتياطي؛ لا تحذفهما قبل مراجعة تلك المسارات.
