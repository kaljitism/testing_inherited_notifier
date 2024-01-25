import 'package:flutter/material.dart';
import 'package:testing_inherited_notifier/slider_data.dart';

class SliderInheritedNotifier extends InheritedNotifier<SliderData> {
  const SliderInheritedNotifier({
    super.key,
    required SliderData sliderData,
    required super.child,
  }) : super(
          notifier: sliderData,
        );

  static double of(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<SliderInheritedNotifier>()
            ?.notifier
            ?.value ??
        0.0;
  }
}
