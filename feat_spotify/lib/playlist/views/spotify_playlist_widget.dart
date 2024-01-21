import 'package:feat_spotify/playlist/models/spotify_playlist.dart';
import 'package:feat_spotify/playlist/view_models/spotify_playlist_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpotifyPlaylistWidget extends ConsumerStatefulWidget {
  const SpotifyPlaylistWidget({
    super.key,
    required this.playlistId,
  });

  final String playlistId;

  @override
  ConsumerState createState() => _SpotifyPlaylistWidgetState();
}

class _SpotifyPlaylistWidgetState extends ConsumerState<SpotifyPlaylistWidget> {
  SpotifyPlaylist? playlist;

  Future<void> _loadData() async {
    playlist = await ref
        .read(
          spotifyPlaylistViewModelProvider.notifier,
        )
        .getPlaylist(
          widget.playlistId,
        );
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.7,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: (playlist == null)
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : Column(
              children: [
                Text(
                  playlist!.name,
                ),
                Text(playlist!.description),
              ],
            ),
    );
  }
}
