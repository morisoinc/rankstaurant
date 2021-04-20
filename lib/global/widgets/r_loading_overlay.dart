import 'dart:ui';

import 'package:flutter/material.dart';

class RLoadingOverlay {
  RLoadingOverlay();

  OverlayEntry? _overlay;

  void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        // replace with your own layout
        builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 2,
          ),
          child: const ColoredBox(
            color: Color(0x80000000),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
      Overlay.of(context)?.insert(_overlay!);
    }
  }

  void hide() {
    if (_overlay != null) {
      _overlay?.remove();
      _overlay = null;
    }
  }
}
