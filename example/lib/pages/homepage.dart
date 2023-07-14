import 'package:flutter/material.dart';

import '../views/debounce_button.dart';
import '../views/throttle_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HzKit Example'),
      ),
      body: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              SizedBox(height: 20),
              DebounceButton(),
              SizedBox(height: 20),
              ThrottleButton(),
              SizedBox(height: 20),
              ThrottleFutureButton()
            ],
          )),
    );
  }
}
