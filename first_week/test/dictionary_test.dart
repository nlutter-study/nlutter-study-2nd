import 'package:first_week/dictionary.dart';
import 'package:test/test.dart';

void main() {
  group('Dictionary Tests', () {
    late Dictionary dictionary;

    setUp(() {
      dictionary = Dictionary();
    });

    test('Add Word and Get Definition', () {
      dictionary.add('hello', 'a greeting');
      expect(dictionary.get('hello'), equals('a greeting'));
    });

    test('Delete Word', () {
      dictionary.add('test', 'a trial');
      dictionary.delete('test');
      expect(dictionary.get('test'), isNull);
    });

    test('Update Word Definition', () {
      dictionary.add('test', 'initial definition');
      var updated = dictionary.update('test', 'updated definition');
      expect(updated, isTrue);
      expect(dictionary.get('test'), equals('updated definition'));
    });

    test('Update Non-existent Word', () {
      var updated = dictionary.update('nonexistent', 'definition');
      expect(updated, isFalse);
    });

    test('Count Entries', () {
      dictionary.add('word1', 'definition1');
      dictionary.add('word2', 'definition2');
      expect(dictionary.count(), equals(2));
    });

    test('Upsert Word (Update Existing)', () {
      dictionary.add('key', 'original value');
      dictionary.upsert('key', 'new value');
      expect(dictionary.get('key'), equals('new value'));
    });

    test('Upsert Word (Insert New)', () {
      dictionary.upsert('newkey', 'new value');
      expect(dictionary.get('newkey'), equals('new value'));
    });

    test('Check Word Exists', () {
      dictionary.add('exist', 'to be');
      expect(dictionary.exists('exist'), isTrue);
      expect(dictionary.exists('noexist'), isFalse);
    });

    test('Bulk Add Words', () {
      dictionary.bulkAdd({'word1': 'def1', 'word2': 'def2'});
      expect(dictionary.count(), equals(2));
      expect(dictionary.get('word1'), equals('def1'));
      expect(dictionary.get('word2'), equals('def2'));
    });

    test('Bulk Delete Words', () {
      dictionary.bulkAdd({'word1': 'def1', 'word2': 'def2', 'word3': 'def3'});
      dictionary.bulkDelete(['word1', 'word2']);
      expect(dictionary.count(), equals(1));
      expect(dictionary.get('word1'), isNull);
      expect(dictionary.get('word2'), isNull);
      expect(dictionary.get('word3'), equals('def3'));
    });

    test('Show All Words', () {
      dictionary.bulkAdd({'word1': 'def1', 'word2': 'def2'});
      expect(dictionary.showAll(), equals({'word1': 'def1', 'word2': 'def2'}));
    });
  });
}
