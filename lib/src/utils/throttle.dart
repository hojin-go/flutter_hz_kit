import 'dart:async';

import 'package:flutter/material.dart';

Timer? _interval;

/// 节流，先触发 [fn] 方法然后计时，[time] ms 内，不再触发 [fn] 方法
throttle(VoidCallback fn, {int time = 600}) {
  if (_interval?.isActive ?? false) {
    debugPrint('throttle invalid and will not call');
    return;
  } else {
    fn();
    _interval = Timer(Duration(milliseconds: time), () {
      _interval!.cancel();
    });
  }
}
