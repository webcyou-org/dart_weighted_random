import 'package:weighted_random/weighted_random.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final List<String> stringList = ["a", "b", "c", "d"];

    setUp(() {
      // Additional setup goes here.
    });

    test('should throw an error when the number of weights does not match the number of items', () {
      final List<int> WeightedIntList = [0, 0, 1];
      expect(() => weightedRandom<String>(stringList, WeightedIntList), throwsException);
    });

    test('If the item is empty, an error is thrown', () {
      expect(() => weightedRandom<String>([], []), throwsException);
    });

    test('does not throw an exception if items and weights are of the same size', () {
      final List<int> WeightedIntList = [0, 0, 1, 0];
      expect(() => weightedRandom<String>(stringList, WeightedIntList), returnsNormally);
    });

    test('The only weighted element is returned.', () {
      final List<int> WeightedIntList = [0, 0, 1, 0];
      final Map<String, dynamic> result =
          weightedRandom<String>(stringList, WeightedIntList);

      expect(result['index'], 2);
      expect(result['item'], 'c');
    });
  });
}
