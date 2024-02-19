import 'dart:io';

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NYWebView extends StatefulWidget {
  const NYWebView({super.key});

  @override
  _NYWebViewAppState createState() => _NYWebViewAppState();
}

class _NYWebViewAppState extends State<NYWebView> {
  late WebViewController controller;
  static const TAG = "NYWebView";
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController();
    controller
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
              Fimber.d("loading");
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
              Fimber.d("onProgress:$progress");
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
              Fimber.d("URL:$url");
            });
          },
          onNavigationRequest: (navigation) {
            final host = Uri.parse(navigation.url).host;
            if (host.contains('youtube.com')) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Blocking navigation to $host',
                  ),
                ),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      // Modify from here...
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'SnackBar',
        onMessageReceived: (message) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message.message)));
        },
      )
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );
    // ...to here.
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: controller,
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
      ],
    );
  }
}