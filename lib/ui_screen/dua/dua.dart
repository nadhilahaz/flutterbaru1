import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterbaru1/ui_screen/tiga/tiga.dart';

class Dua extends StatefulWidget {
  const Dua({super.key});

  @override
  State<Dua> createState() => _DuaState();
}

var x = 0;

class _DuaState extends State<Dua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Dua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 3,
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
                print('lanjut ke page 3');
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Tiga();
                  },
                );

                Navigator.push(context, route);
              },
              child: const Text(
                "Add",
              ),
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
          ],
        ),
      ),
    );
  }
}
