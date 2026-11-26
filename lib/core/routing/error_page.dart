import 'package:flutter/material.dart';
import '../utils/extensions/theme_ext.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/sign_in/present/views/sign_in_view.dart';

class ErrorPageBuilder {
  static Widget build(BuildContext context, {String? message}) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go(SignInView.routeName),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: context.colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message ?? 'An unexpected error occurred',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go(SignInView.routeName),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
