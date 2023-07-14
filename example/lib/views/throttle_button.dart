import 'package:flutter/material.dart';
import 'package:hz_kit/hz_kit.dart';

class ThrottleButton extends StatelessWidget {
  const ThrottleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: const Text('Throttle'),
    );
  }

  void onPressed() {
    throttle(
      () {
        print('function fired');
      },
      time: const Duration(seconds: 2),
      onIgnored: () {
        print('ignored');
      },
      onLocked: () {
        print('locked');
      },
      onUnlocked: () => print('unlocked'),
    );
  }
}

class ThrottleFutureButton extends StatelessWidget {
  const ThrottleFutureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: () => onPressed(context),
      child: const Text('Throttle Future'),
    );
  }

  void onPressed(BuildContext context) {
    throttleFuture(
      () async {
        print('function fired');
        await Future.delayed(const Duration(seconds: 2));
        print('function done');
      },
      onIgnored: () {
        print('ignored');
      },
      onLocked: () {
        print('locked');
      },
      onUnlocked: () => print('unlocked'),
    );
  }
}
