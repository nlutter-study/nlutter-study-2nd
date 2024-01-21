import 'package:feat_spotify/playlist/models/spotify_playlist.dart';
import 'package:feat_spotify/playlist/view_models/spotify_playlist_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpotifyPlaylistWidget extends ConsumerStatefulWidget {
  const SpotifyPlaylistWidget({
    super.key,
    required this.playlistId,
    required this.isDetail,
  });

  final String playlistId;
  final bool isDetail;

  @override
  ConsumerState createState() => _SpotifyPlaylistWidgetState();
}

class _SpotifyPlaylistWidgetState extends ConsumerState<SpotifyPlaylistWidget> {
  late final size = MediaQuery.of(context).size;

  SpotifyPlaylist? playlist;

  Future<void> _loadData() async {
    playlist = await ref
        .read(
          spotifyPlaylistViewModelProvider.notifier,
        )
        .getPlaylist(
          widget.playlistId,
        );
    if (mounted) setState(() {});
  }

  Future<void> _openSpotifyTrackWeb(int index) async {
    await launchUrl(
      Uri.parse(
        playlist!.tracks.items[index].track.externalUrls.spotify,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: (playlist == null)
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : SingleChildScrollView(
              child: SizedBox(
                height: size.height * 0.725,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ..._buildTextWidgets(),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: _buildTrackListView(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  List<Widget> _buildTextWidgets() {
    return [
      Text(
        playlist!.name,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w800,
          height: 1.3,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '팔로우: ${playlist!.followers.total} 개﹒'
            '트랙: ${playlist!.tracks.total} 개',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        playlist!.description,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade400,
        ),
      ),
    ];
  }

  Widget _buildTrackListView() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: playlist!.tracks.items.length,
      itemBuilder: (context, index) {
        final trackItem = playlist!.tracks.items[index];
        return _buildTrackContainer(trackItem, index)
            .animate(target: widget.isDetail ? 1 : 0)
            .fadeIn(
              delay: 300.ms,
              duration: 200.ms,
            )
            .slideX(
              duration: 200.ms,
              begin: -0.3,
              end: 0.0,
            );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 12,
        );
      },
    );
  }

  Container _buildTrackContainer(Item trackItem, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 3),
            blurRadius: 3,
            spreadRadius: 3,
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(trackItem.track.album.images.last.url),
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          trackItem.track.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          trackItem.track.artists.map((e) => e.name).join(', '),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Transform.translate(
          offset: const Offset(10, 0),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => _openSpotifyTrackWeb(index),
            icon: const Icon(
              FontAwesomeIcons.spotify,
              color: Color.fromRGBO(30, 215, 96, 1),
              size: 32,
            ),
          ),
        ),
      ),
    );
  }
}
