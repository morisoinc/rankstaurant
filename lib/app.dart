import 'package:flutter/material.dart';

import 'global/theme.dart' as theme;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rankstaurant',
      theme: theme.buildTheme(),
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Spacer(),
                Expanded(flex: 8, child: TextField()),
                Spacer()
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: const [
                Spacer(),
                Expanded(flex: 8, child: TextField()),
                Spacer()
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: () {}, child: const Text('This is a button')),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('This is a button')),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
