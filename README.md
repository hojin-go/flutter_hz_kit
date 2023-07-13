<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

一些常用的工具集合，可能包括一些算法，函数或小组件等。

## Getting started

在 `pubspec.yaml` 中添加依赖

```yaml
dependencies:
  hz_kit: ^0.0.1
```

然后在终端执行 `flutter pub get`  
在需要使用的地方 import

```dart
import 'package:hz_kit/hz_kit.dart';
```

## Usage

`debounce`：某个函数在某段时间内，无论触发了多少次回调，都只执行最后一次

```dart
debounce(() {
  print('debounce');
}, time: 1000);
```

`throttle` 节流函数，先触发函数，然后在一定时间内不触发，过了一定时间后再触发

```dart
throttle(() {
  print('throttle');
}, time: 1000);
```
