import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Funcion de conteo")),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$clickCounter",
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            /*
            Text('Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25))
            */
            (clickCounter == 1)
                ? const Text("Click", style: TextStyle(fontSize: 25))
                : const Text("Clicks", style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              child: const Icon(Icons.refresh_rounded)),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              onPressed: () {
                if (clickCounter == 0) return;
                setState(() {
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1)),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one))
        ],
      ),
    );
  }
}
