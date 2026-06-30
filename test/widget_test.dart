import 'package:flutter_test/flutter_test.dart';
import 'package:resq_rules/domain/models/shared/bilingual_text.dart';
import 'package:resq_rules/domain/models/shared/lang.dart';

void main() {
  group('BilingualText.resolve', () {
    const text = BilingualText(en: 'yes', ar: 'نعم');

    test('returns English for Lang.en', () {
      expect(text.resolve(Lang.en), 'yes');
    });

    test('returns Arabic for Lang.ar', () {
      expect(text.resolve(Lang.ar), 'نعم');
    });
  });
}
