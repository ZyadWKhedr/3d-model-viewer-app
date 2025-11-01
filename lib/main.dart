import 'package:flutter/material.dart';
import 'body_viewer_page.dart';

void main() {
  runApp(const BodyFormApp());
}

class BodyFormApp extends StatelessWidget {
  const BodyFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BodyForm',
      theme: ThemeData.dark(),
      home: const BodyViewerPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
