import 'package:flutter/material.dart';

class ColorRepository {
  Map<String, MaterialColor>? colorMap;

  void loadColorMap() {
    colorMap = {
      'red': Colors.red,
      'green': Colors.green,
      'blue': Colors.blue,
      'indigo': Colors.indigo,
      'lime': Colors.lime,
    };
  }

  MaterialColor getColorAt(int index) {
    return colorMap!.values.elementAt(index);
  }

  String getColorKeyAt(int index) {
    return colorMap!.keys.elementAt(index);
  }

  Color computeTextColorFor(int index) {
    return colorMap!.values.elementAt(index).computeLuminance() > 0.4
        ? Colors.black
        : Colors.white;
  }
}
