import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  final int initialValue;
  const Test({super.key, required this.initialValue});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late int counterValue;

  @override
  void initState() {
    counterValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Test Text"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("You have pushed the button this many times:"),
              ),
              Text("$counterValue"),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterValue--;
                          });
                        },
                        child: const Text("decrement")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterValue = widget.initialValue;
                          });
                        },
                        child: const Text("reset")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counterValue++;
                          });
                        },
                        child: const Text("increment"))
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
