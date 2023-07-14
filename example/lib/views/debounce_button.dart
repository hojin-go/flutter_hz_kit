import 'package:flutter/material.dart';
import 'package:hz_kit/hz_kit.dart';

class DebounceButton extends StatelessWidget {
  const DebounceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: const Text('Debounce '),
    );
  }

  void onPressed() {
    debounce(
      () {
        print('function fired');
      },
      time: const Duration(milliseconds: 600),
      onCancel: () {
        print('Click canceled');
      },
    );
  }
}
