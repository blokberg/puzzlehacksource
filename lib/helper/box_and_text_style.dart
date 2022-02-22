import 'package:flutter/material.dart';
import 'package:puzzleapp/enums/box_positions.dart';

import 'box_properties.dart';

class BoxAndTextStyle {
  static TextStyle textStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22.0,
    color: Colors.white70,
  );

  static BoxAndTextStyle? _instance;
  static BoxAndTextStyle get instance {
    return _instance ??= BoxAndTextStyle._init();
  }

  BoxAndTextStyle._init();

  BoxDecoration getBoxDecoration({
    required BuildContext context,
    required BoxProperties box,
    required BoxPositions position,
  }) {
    Color color = position == BoxPositions.right
        ? box.isTarget
            ? Colors.green.withOpacity(.3)
            : Colors.green
        : position == BoxPositions.conditionalRight
            ? box.isTarget
                ? Colors.orange.withOpacity(.3)
                : Colors.orange
            : box.isTarget
                ? Colors.redAccent.withOpacity(.3)
                : Colors.redAccent;
    return BoxDecoration(
      color: Theme.of(context).scaffoldBackgroundColor,
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      border: Border.all(
        color: color,
      ),
    );
  }
}
