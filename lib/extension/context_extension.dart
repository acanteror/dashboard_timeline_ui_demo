import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size size() {
    return MediaQuery.of(this).size;
  }

  ///percent of size width
  double pcw(double perCent) {
    return size().width * perCent / 100;
  }

  ///percent of size height
  double pch(double perCent) {
    return size().height * perCent / 100;
  }
}
