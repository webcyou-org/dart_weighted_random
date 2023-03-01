import 'package:weighted_random/weighted_random.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      final List<String> stringList = ["a", "b", "c", "d"];
      final Map<String, dynamic> result =
          weightedRandom<String>(stringList, [0, 0, 1, 0]);

      expect(result['index'], 2);
      expect(result['item'], 'c');
    });
  });
}
