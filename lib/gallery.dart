import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://thebodymove.in/gallery/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
