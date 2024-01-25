import 'package:flutter/material.dart';
import 'package:testing_inherited_notifier/slider_data.dart';
import 'package:testing_inherited_notifier/slider_inherited_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final SliderData sliderData = SliderData();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Slider'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SliderInheritedNotifier(
          sliderData: sliderData,
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.blue
                            .withOpacity(SliderInheritedNotifier.of(context)),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        border: const Border(
                          top: BorderSide(
                            color: Colors.white,
                            width: 10,
                          ),
                          left: BorderSide(
                            color: Colors.white,
                            width: 10,
                          ),
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.red
                            .withOpacity(SliderInheritedNotifier.of(context)),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: const Border(
                          top: BorderSide(
                            color: Colors.white,
                            width: 10,
                          ),
                          right: BorderSide(
                            color: Colors.white,
                            width: 10,
                          ),
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Slider(
                  min: 0,
                  max: 1,
                  value: SliderInheritedNotifier.of(context),
                  onChanged: (value) {
                    sliderData.value = value;
                  },
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
