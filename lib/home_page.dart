import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Slider'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 180,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    border: Border(
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
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    border: Border(
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
              value: 0.2,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
