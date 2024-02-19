import 'package:flutter/material.dart';
import 'package:weather_app/screens/loading.dart';
import 'package:weather_app/screens/ny_webView.dart';
import 'package:fimber/fimber.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() {
  Fimber.plantTree(DebugTree());
  // app code here ...

  runApp(
      MaterialApp(
          title: "Weather App",
          home: LaunchApp()
      )
  );
}

class LaunchApp extends StatelessWidget {
  String _name = "";
  late FloatingActionButton fab1,fab2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  'click $_name',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

              ],
            ),
          ),
          floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                fab1 = FloatingActionButton(
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loading(),
                        ))
                  },
                  child: Icon(Icons.add),
                  heroTag: "Loading GPS",
                ),
                fab2 = FloatingActionButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NYWebView(),
                      ))
                },
                child: Icon(Icons.navigate_next_rounded),
                  heroTag: "Open Web",
                ),
              ]
          )
      )
    );
  }
}