import 'package:flutter/material.dart';
import 'package:elzefir/core/utils/extensions/theme_ext.dart';
import 'package:flutter/foundation.dart';

class CustomErrorWidget extends StatelessWidget {
  final FlutterErrorDetails? errorDetails;

  const CustomErrorWidget({super.key, this.errorDetails});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: context.colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                color: context.colorScheme.error,
                size: 80,
              ),
              const SizedBox(height: 20),
              const Text(
                'حدث خطأ غير متوقع',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'عذراً، حدث خطأ ما. يرجى إعادة تشغيل التطبيق.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                  textDirection: TextDirection.rtl,
                ),
              ),
              if (kDebugMode && errorDetails != null) ...[
                const SizedBox(height: 24),
                Text(
                  'تفاصيل الخطأ (لتطوير فقط):',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SelectableText(
                    errorDetails!.exceptionAsString(),
                    style: TextStyle(
                      color: context.colorScheme.onSurfaceVariant,
                      fontSize: 12,
                    ),
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add restart logic if needed
                },
                child: const Text('إعادة المحاولة'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
