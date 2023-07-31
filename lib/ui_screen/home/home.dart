import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutterbaru1/ui_screen/dua/dua.dart';
import 'package:flutterbaru1/ui_screen/satu/satu.dart';
import 'package:states_rebuilder/scr/state_management/extensions/type_extensions.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';
// import 'package:flutterbaru1/ui_screen/tiga/tiga.dart';

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 3,
            ),
            OnReactive(
              () => Text(
                counter.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ini print satu');
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Satu();
                  },
                );

                Navigator.push(context, route);
              },
              child: const Text(
                "CLICK ME",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counter.state = counter.state + 1;
                print(counter.state);
              },
              child: const Text(
                "Tambah",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counter.state = counter.state - 1;
                print(counter.state);
              },
              child: const Text(
                "Kurang",
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     print('ini print satu');
            //     final route = MaterialPageRoute(
            //       builder: (context) {
            //         return const Dua();
            //       },
            //     );

            //     Navigator.push(context, route);
            //   },
            //   child: const Text(
            //     "DUA",
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     print('ini print satu');
            //     final route = MaterialPageRoute(
            //       builder: (context) {
            //         return const Tiga();
            //       },
            //     );

            //     Navigator.push(context, route);
            //   },
            //   child: const Text(
            //     "TIGA",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

final counter = 0.inj();
