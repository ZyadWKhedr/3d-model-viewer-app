import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('3D Model Test')),
      body: const Center(
        child: ModelViewer(
          src: 'assets/models/male_body.glb',
          alt: "A 3D human body model",
          ar: false,
          autoRotate: true,
          cameraControls: true,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
