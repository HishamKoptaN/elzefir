import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every asset referenced from lib exists on disk', () {
    final references = <String>{};
    final pattern = RegExp(r'assets/[A-Za-z0-9_./-]+');

    for (final entity in Directory('lib').listSync(recursive: true)) {
      if (entity is File && entity.path.endsWith('.dart')) {
        for (final match in pattern.allMatches(entity.readAsStringSync())) {
          references.add(match.group(0)!);
        }
      }
    }

    final missing =
        references.where((path) => !File(path).existsSync()).toList()..sort();
    expect(references, isNotEmpty);
    expect(
      missing,
      isEmpty,
      reason: 'Missing asset files referenced from lib: $missing',
    );
  });
}
