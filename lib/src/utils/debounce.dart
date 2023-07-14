import 'dart:async';
import 'dart:ui';

Timer? _timer;

/// 防抖方法，[time] 时间内触发的 [fn] 方法都会被取消
debounce(
  VoidCallback fn, {
  Duration time = const Duration(milliseconds: 500),
  VoidCallback? onCancel,
}) {
  // 还在时间之内，抛弃上一次
  if (_timer?.isActive ?? false) {
    _timer!.cancel();
    onCancel?.call();
  }

  _timer = Timer(time, fn);
}
