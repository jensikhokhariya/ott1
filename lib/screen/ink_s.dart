import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Link_S extends StatefulWidget {
  const Link_S({Key? key}) : super(key: key);

  @override
  State<Link_S> createState() => _Link_SState();
}

class _Link_SState extends State<Link_S> {
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    String l1 = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Open"),
        ),
        body: Stack(
          children: [
            WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: l1,
              onProgress: (a) {
                if (a == 100) {
                  setState(() {
                    isvisible = false;
                  });
                }
              },
            ),
            Center(
              child: Visibility(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
