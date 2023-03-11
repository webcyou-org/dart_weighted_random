# Weighted Random for Dart
<p align="center">
  <img width="600" src="https://user-images.githubusercontent.com/1584153/222500856-0981101f-684b-4b05-b939-91258a379c4a.png">
</p>

<p align="center">
  <img width="600" src="https://user-images.githubusercontent.com/1584153/224507285-c2c353d0-5d90-424c-ae7d-0b81966fa76f.png">
</p>

<p align="center">
  <img width="600" src="https://user-images.githubusercontent.com/1584153/224507289-130ac7b4-732e-42bc-9f19-daf89cea9115.png">
</p>

<p align="center">
  <img width="600" src="https://user-images.githubusercontent.com/1584153/224507290-9d747662-18c8-4022-a9a3-58e8ee4e6f86.png">
</p>

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
