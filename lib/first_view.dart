import 'package:flutter/material.dart';

import 'web_view_screen.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 40),

            //

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<WebViewScreen>(
                    builder: (BuildContext _context) {
                      return const WebViewScreen(
                        url: 'https://pub.dev/packages/webview_flutter',
                      );
                    },
                  ),
                );
              },
              child: const Text('webview'),
            ),

            //

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<WebViewScreen>(
                    builder: (BuildContext _context) {
                      return const WebViewScreen(
                        url: 'https://pub.dev/packages/flutter_riverpod',
                      );
                    },
                  ),
                );
              },
              child: const Text('riverpod'),
            ),

            //
          ],
        ),
      ),
    );
  }
}
