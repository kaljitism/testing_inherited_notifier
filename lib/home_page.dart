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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      border: const Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      border: const Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Slider(
                value: 0.2,
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
