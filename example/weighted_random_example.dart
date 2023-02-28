import 'package:weighted_random/weighted_random.dart';

void main() {
  final List<String> stringList = ["a","b", "c", "d"];
  final Map<String, dynamic> result = weightedRandom<String>(stringList, [40, 20, 60, 20]);
  
  print(result);
}
