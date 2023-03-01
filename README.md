# Weighted Random for Dart

## Getting started

In your flutter project add the dependency:

```dart
dependencies:
  ...
  weighted_random:
```

## Usage

Import weighted_random.dart

```dart
import 'package:weighted_random/weighted_random.dart';
```

Example using

```dart
final List<String> stringList = ["a", "b", "c", "d"];
final Map<String, dynamic> result = weightedRandom<String>(stringList, [40, 20, 60, 20]);

print(result);
```

Output

```dart
{item: a, index: 0}
or
{item: b, index: 1}
or
{item: c, index: 2}
or
{item: d, index: 3}
```

## Author

**Daisuke Takayama**

-   [@webcyou](https://twitter.com/webcyou)
-   [@panicdragon](https://twitter.com/panicdragon)
-   <https://github.com/webcyou>
-   <https://github.com/webcyou-org>
-   <https://github.com/panicdragon>
-   <https://www.webcyou.com/>
