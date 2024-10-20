import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  final String title;
  final int initialValue;

  const MyHomeScreen({super.key, required this.title, this.initialValue = 0});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  late int counterValue;

  @override
  void initState() {
    counterValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const SizedBox(height: 16.0),
            Text(
              "$counterValue",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counterValue++;
                    });
                  },
                  child: const Text('Increment')),
            ),
          ],
        ),
      ),
    );
  }
}
