import 'package:flutter/material.dart';
// import 'package:flutterbaru1/ui_screen/dua/dua.dart';
import 'package:flutterbaru1/ui_screen/satu/satu.dart';
// import 'package:flutterbaru1/ui_screen/tiga/tiga.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
