import 'package:flutter/material.dart';

extension Context on BuildContext {
  double sh({double size = 1.0}) {
    return MediaQuery.of(this).size.height * size;
  }

  double sw({double size = 1.0}) {
    return MediaQuery.of(this).size.width * size;
  }

   void dismissKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (currentFocus.hasFocus) {
      currentFocus.unfocus();
    }
  }
}
