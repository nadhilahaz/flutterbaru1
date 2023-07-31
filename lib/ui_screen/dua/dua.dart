import 'package:flutter/material.dart';
import 'package:flutterbaru1/ui_screen/tiga/tiga.dart';

class Dua extends StatelessWidget {
  const Dua({super.key});

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
