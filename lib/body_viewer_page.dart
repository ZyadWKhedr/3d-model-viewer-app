import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class BodyViewerPage extends StatefulWidget {
  const BodyViewerPage({super.key});

  @override
  State<BodyViewerPage> createState() => _BodyViewerPageState();
}

class _BodyViewerPageState extends State<BodyViewerPage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  // List of available characters
  final List<Map<String, String>> characters = [
    {
      'name': 'Lightning McQueen',
      'src': 'assets/models/lightning_mcqueen_3d_model.glb',
    },

    {'name': 'Four Arms Ben 10', 'src': 'assets/models/fourarms_ben_10.glb'},
    {
      'name': 'The Amazing Spider-Man',
      'src': 'assets/models/the_amazing_spider-man_2_spider-man.glb',
    },
    {
      'name': 'Pinocchio',
      'src': 'assets/models/play_station_2_-_kingdom_hearts_-_pinocchio.glb',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('3D Character Viewer'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: characters.length,
              onPageChanged: (index) => setState(() => currentIndex = index),
              itemBuilder: (context, index) {
                final model = characters[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        model['name']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ModelViewer(
                          key: ValueKey(model['name']),
                          src: model['src']!,
                          ar: false,
                          autoRotate: true,
                          autoPlay: true,
                          cameraControls: true,
                          backgroundColor: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Dots indicator
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                characters.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: currentIndex == index ? 16 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? Colors.white
                        : Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
