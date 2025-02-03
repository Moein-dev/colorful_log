import 'package:flutter/material.dart';
import 'package:colorful_log_plus/colorful_log_plus.dart';

void main() {
  runApp(const MyApp());

  // Example logs
  debugLog(message: "Hello, World!");
  debugLog(tag: "Auth", message: "User logged in");
  debugLog(
    message: "Warning message",
    color: LogColor.yellow,
    iconType: LogIconType.warning,
  );
  debugLog(
    message: "This is an error",
    color: LogColor.red,
    iconType: LogIconType.error,
    showLogAddress: true,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Colorful Log Example")),
        body: const Center(child: Text("Check debug console for logs!")),
      ),
    );
  }
}
