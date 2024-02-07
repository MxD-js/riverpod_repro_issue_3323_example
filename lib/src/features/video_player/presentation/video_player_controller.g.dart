// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_player_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$videoPlayerItemControllerHash() =>
    r'4131e2ff5af27b84282a6516e09d617e4ef26b0b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [videoPlayerItemController].
@ProviderFor(videoPlayerItemController)
const videoPlayerItemControllerProvider = VideoPlayerItemControllerFamily();

/// See also [videoPlayerItemController].
class VideoPlayerItemControllerFamily
    extends Family<AsyncValue<ChewieController>> {
  /// See also [videoPlayerItemController].
  const VideoPlayerItemControllerFamily();

  /// See also [videoPlayerItemController].
  VideoPlayerItemControllerProvider call({
    required String videoId,
  }) {
    return VideoPlayerItemControllerProvider(
      videoId: videoId,
    );
  }

  @override
  VideoPlayerItemControllerProvider getProviderOverride(
    covariant VideoPlayerItemControllerProvider provider,
  ) {
    return call(
      videoId: provider.videoId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'videoPlayerItemControllerProvider';
}

/// See also [videoPlayerItemController].
class VideoPlayerItemControllerProvider
    extends AutoDisposeFutureProvider<ChewieController> {
  /// See also [videoPlayerItemController].
  VideoPlayerItemControllerProvider({
    required String videoId,
  }) : this._internal(
          (ref) => videoPlayerItemController(
            ref as VideoPlayerItemControllerRef,
            videoId: videoId,
          ),
          from: videoPlayerItemControllerProvider,
          name: r'videoPlayerItemControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$videoPlayerItemControllerHash,
          dependencies: VideoPlayerItemControllerFamily._dependencies,
          allTransitiveDependencies:
              VideoPlayerItemControllerFamily._allTransitiveDependencies,
          videoId: videoId,
        );

  VideoPlayerItemControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.videoId,
  }) : super.internal();

  final String videoId;

  @override
  Override overrideWith(
    FutureOr<ChewieController> Function(VideoPlayerItemControllerRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VideoPlayerItemControllerProvider._internal(
        (ref) => create(ref as VideoPlayerItemControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        videoId: videoId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ChewieController> createElement() {
    return _VideoPlayerItemControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VideoPlayerItemControllerProvider &&
        other.videoId == videoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, videoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VideoPlayerItemControllerRef
    on AutoDisposeFutureProviderRef<ChewieController> {
  /// The parameter `videoId` of this provider.
  String get videoId;
}

class _VideoPlayerItemControllerProviderElement
    extends AutoDisposeFutureProviderElement<ChewieController>
    with VideoPlayerItemControllerRef {
  _VideoPlayerItemControllerProviderElement(super.provider);

  @override
  String get videoId => (origin as VideoPlayerItemControllerProvider).videoId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
