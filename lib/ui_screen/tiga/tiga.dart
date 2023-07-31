import 'dart:math';

import 'package:flutter/material.dart';

class Tiga extends StatefulWidget {
  const Tiga({super.key});

  @override
  State<Tiga> createState() => _TigaState();
}

var x = 0;
// var y = Random().nextInt(100);

class _TigaState extends State<Tiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Random().nextInt(100).toString(),
          // textScaleFactor: 3,
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.loop))
        ],
      ),
      body: const Center(
        child: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatefulWidget {
  const MyColumn({
    super.key,
  });

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Random().nextInt(100).toString(),
        ),
        Text(
          x.toString(),
          textScaleFactor: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = x + 10;
                  print('nad');
                });
              },
              child: const Text(
                "Tambah",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = x - 10;
                  print('diloh');
                });
              },
              child: const Text(
                "Kurang",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Text(
              x.toString(),
              textScaleFactor: 2,
            );

            Navigator.pop(context);
          },
          child: const Text(
            "Back",
          ),
        ),
        text
      ],
    );
  }
}

const text = const Text('hai');
