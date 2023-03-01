import 'dart:math' as math;

Map<String, dynamic> weightedRandom<T>(List<T> items, List<int> weights) {
  if (items.length != weights.length) {
    throw Exception('Items and weights must be of the same size');
  }

  if (items.isEmpty) {
    throw Exception('Items must not be empty');
  }

  List<int> cumulativeWeights = [];
  for (int i = 0; i < weights.length; i++) {
    cumulativeWeights.add(weights[i] + (i == 0 ? 0 : cumulativeWeights[i - 1]));
  }

  final maxCumulativeWeight = cumulativeWeights[cumulativeWeights.length - 1];
  final randomNumber = maxCumulativeWeight * math.Random().nextDouble();
  Map<String, dynamic> result = {};

  for (int itemIndex = 0; itemIndex < items.length; itemIndex++) {
    if (cumulativeWeights[itemIndex] >= randomNumber) {
      return result = {
        'item': items[itemIndex],
        'index': itemIndex,
      };
    }
  }
  return result;
}
