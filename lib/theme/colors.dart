import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

final Color accent = Colors.orange;
final Color accentLight = Colors.orange[100];
final Color white = Colors.white;
final Color opacityWidth = Colors.white.withOpacity(.7);
final Color transparent = Colors.transparent;
final Color black = Colors.black;
final Color blackLigth = Colors.black26;

final LinearGradient backgroudGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [
    Colors.blueGrey[300],
    Colors.blueAccent[200],
    Colors.blue[400],
  ],
);

final lineStyle = LineStyle(color: blackLigth, width: 2);
final indicatorStyle = IndicatorStyle(width: 12, color: accent);
