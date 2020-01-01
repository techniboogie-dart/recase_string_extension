import 'package:test/test.dart';

import 'package:recase_string_extension/recase.dart';

void main() {
  String rcInput = 'This is-Some_sampleText. YouDig?';
  String allCapsInput = 'FOO_BAR';

  group('snake_case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.snakeCase, equals('this_is_some_sample_text_you_dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.snakeCase, equals('foo_bar'));
    });
  });

  group('dot.case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.dotCase, equals('this.is.some.sample.text.you.dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.dotCase, equals('foo.bar'));
    });
  });

  group('path/case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.pathCase, equals('this/is/some/sample/text/you/dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.pathCase, equals('foo/bar'));
    });
  });

  group('param-case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.paramCase, equals('this-is-some-sample-text-you-dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.paramCase, equals('foo-bar'));
    });
  });

  group('PascalCase', () {
    test('from "${rcInput}".', () {
      expect(rcInput.pascalCase, equals('ThisIsSomeSampleTextYouDig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.pascalCase, equals('FooBar'));
    });
  });

  group('Header-Case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.headerCase, equals('This-Is-Some-Sample-Text-You-Dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.headerCase, equals('Foo-Bar'));
    });
  });

  group('Title Case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.titleCase, equals('This Is Some Sample Text You Dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.titleCase, equals('Foo Bar'));
    });
  });

  group('camelCase', () {
    test('from "${rcInput}".', () {
      expect(rcInput.camelCase, equals('thisIsSomeSampleTextYouDig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.camelCase, equals('fooBar'));
    });
  });

  group('Sentence case', () {
    test('from "${rcInput}".', () {
      expect(rcInput.sentenceCase, equals('This is some sample text you dig?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.sentenceCase, equals('Foo bar'));
    });
  });

  group('CONSTANT_CASE', () {
    test('from "${rcInput}".', () {
      expect(rcInput.constantCase, equals('THIS_IS_SOME_SAMPLE_TEXT_YOU_DIG?'));
    });

    test('from "${allCapsInput}".', () {
      expect(allCapsInput.constantCase, equals('FOO_BAR'));
    });
  });
}
