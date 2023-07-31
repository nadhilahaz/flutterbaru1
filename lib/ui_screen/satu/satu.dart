import 'package:flutter/material.dart';
import 'package:flutterbaru1/ui_screen/dua/dua.dart';
import 'package:flutterbaru1/ui_screen/home/home.dart';
import 'package:states_rebuilder/scr/state_management/listeners/on_reactive.dart';
// import 'package:flutterbaru/ui_screen/dua/dua.dart';
// import 'package:flutterbaru1/ui_screen/tiga/tiga.dart';

class Satu extends StatelessWidget {
  const Satu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text('Page Satu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnReactive(
              () => Text(counter.state.toString()),
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
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                print('lanjut ke page 2');
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Dua();
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
            // const SizedBox(
            //   height: 10,
            // ),
            ElevatedButton(
              onPressed: () {
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
