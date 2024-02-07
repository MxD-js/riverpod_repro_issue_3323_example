import 'package:chewie/chewie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

part 'video_player_controller.g.dart';

@riverpod
// ignore: unsupported_provider_value
FutureOr<ChewieController> videoPlayerItemController(
  VideoPlayerItemControllerRef ref, {
  required String videoId,
}) async {
  // Youtube explode
  final yt = YoutubeExplode();
  final VideoPlayerController playerController;
  final ChewieController vController;

  ref.onAddListener(() {
    print("Listener Added....");
  });

  ref.onRemoveListener(() {
    print("Listener Removed....");
  });

  ref.onCancel(() {
    print("Canceling....");
  });

  ref.onResume(() {
    print("Resuming....");
  });

  // get videoFromYtExplode:
  final uri = await _getYTMetadata(videoId, yt);
  // PodPlayer controller
  playerController = VideoPlayerController.networkUrl(uri);
  await playerController.initialize();

  vController = ChewieController(
    autoInitialize: true,
    startAt: const Duration(seconds: 120),
    videoPlayerController: playerController,
    autoPlay: true,
  );

  // Clean up
  ref.onDispose(() {
    print("STARTED DISPOSING VIDEO PLAYER!!!!");
    playerController.dispose();
    vController.dispose();
    yt.close();
    print("FINISHED DISPOSING VIDEO PLAYER!!!!");
  });


  return vController;
}

Future<Uri> _getYTMetadata(String videoId, YoutubeExplode ytXplode) async {
  var manifest = await ytXplode.videos.streamsClient.getManifest(videoId);
  var muxedInfo = manifest.muxed.bestQuality;
  var videoUri = muxedInfo.url;
  return videoUri;
}
