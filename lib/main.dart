import 'package:firstly/pages/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // Import foundation.dart for kReleaseMode

import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TodoPage());
  }
}
