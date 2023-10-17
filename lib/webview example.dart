import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Webviewex(),
  ));
}

class Webviewex extends StatefulWidget {
  const Webviewex({super.key});

  @override
  State<Webviewex> createState() => _WebviewexState();
}

class _WebviewexState extends State<Webviewex> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://unsplash.com/t/nature"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("webview"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
