import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/video_player/presentation/video_player_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VideoPlayerScreen extends HookConsumerWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vController =
        ref.watch(videoPlayerItemControllerProvider(videoId: "aqz-KE-bpKQ"));

    return Scaffold(
        appBar: AppBar(title: const Text("Buck Bunny")),
        body: vController.when(
          data: (data) =>
              AspectRatio(aspectRatio: 16 / 9, child: Chewie(controller: data)),
          error: (error, stackTrace) => Center(
            child: Text("Error Occured $error"),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
