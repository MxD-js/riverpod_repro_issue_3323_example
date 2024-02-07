import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              "Attempt 1: Have your sound on and after clicking the play button press the back arrow button on the AppBar BEFORE the video player loads"),
          const Text("--------------"),
          const Text(
              "What you'll notice is the sound will continue to play, meaning the ref.onDispose did not get called to dispose the video controller"),
          const Text("--------------"),
          const Text(
              "Attempt 2: Now try it again with waiting so the video can play and then do the same, press the back arrow and ref.onDispose got called to dispose the video controllers"),
          ElevatedButton(
            child: const Text("Play Buck Bunny"),
            onPressed: () => context.goNamed("video_player"),
          )
        ],
      ),
    );
  }
}
