import 'dart:async';
import 'dart:ui';

Timer? _debounce;

/// 防抖方法，[time] ms 内触发的 [fn] 方法都会被取消
debounce(VoidCallback fn, {int time = 600}) {
  // 还在时间之内，抛弃上一次
  if (_debounce?.isActive ?? false) {
    _debounce!.cancel();
  }

  _debounce = Timer(Duration(milliseconds: time), fn);
}
