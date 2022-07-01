import 'package:flutter/material.dart';

class AlerttttDialog extends StatefulWidget {
  const AlerttttDialog({Key? key}) : super(key: key);

  @override
  State<AlerttttDialog> createState() => _HomeState();
}

class _HomeState extends State<AlerttttDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog In Flutter"),
      ),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    // barrier dismissible is used for, if we click outside alert dialog it must not get close.
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("How Are You?"),
                        content: const Text("Hello Izhan"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Hello")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("I Am Fine")),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.ads_click),
              label: const Text("Click Me"))),
    );
  }
}
