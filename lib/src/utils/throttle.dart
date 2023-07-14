import 'dart:async';
import 'package:flutter/foundation.dart';

Timer? _timer;

/// 节流，先触发 [fn] 方法然后计时，[time]时间 内，不再触发 [fn] 方法
throttle(
  VoidCallback fn, {
  Duration time = const Duration(milliseconds: 500),
  VoidCallback? onLocked,
  VoidCallback? onUnlocked,
  VoidCallback? onIgnored,
}) {
  if (_timer?.isActive ?? false) {
    onIgnored?.call();
    return;
  } else {
    fn();

    onLocked?.call();
    _timer = Timer(time, () {
      _timer!.cancel();
      _timer = null;
      onUnlocked?.call();
    });
  }
}

Future? _future;

throttleFuture<T>(
  Future<T> Function() fn, {
  VoidCallback? onLocked,
  VoidCallback? onUnlocked,
  VoidCallback? onIgnored,
}) async {
  if (_future != null) {
    onIgnored?.call();
    return;
  } else {
    onLocked?.call();
    _future = fn();

    _future!.whenComplete(() {
      _future = null;
      onUnlocked?.call();
    });
  }
}
