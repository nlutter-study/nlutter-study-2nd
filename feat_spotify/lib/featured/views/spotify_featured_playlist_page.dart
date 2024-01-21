import 'package:feat_spotify/featured/models/spotify_featured_playlists.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpotifyFeaturedPlaylistPage extends StatelessWidget {
  const SpotifyFeaturedPlaylistPage({
    super.key,
    required this.playlist,
  });

  final SpotifySimplifiedPlaylist playlist;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        _buildPlaylistCard(size),
        _buildPlaylistImage(),
      ],
    );
  }

  Widget _buildPlaylistImage() {
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -150),
        child: Material(
          color: Colors.transparent,
          elevation: 10,
          child: Container(
            width: 300,
            height: 300,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                  playlist.images.first.url,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaylistCard(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.translate(
          offset: const Offset(0, 80),
          child: Material(
            color: Colors.transparent,
            elevation: 10,
            child: Container(
              width: size.width - 80,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 180,
                  ),
                  Text(
                    playlist.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Divider(
                    thickness: 0.2,
                    height: 24,
                  ),
                  Text(
                    'Tracks: ${playlist.tracks.total}',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    playlist.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const Spacer(),
                  _buildOpenSpotify(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _openSpotifyWeb() async {
    await launchUrl(
      Uri.parse(playlist.externalUrls.spotify),
    );
  }

  Widget _buildOpenSpotify() {
    return GestureDetector(
      onTap: _openSpotifyWeb,
      child: Container(
        height: 72,
        alignment: Alignment.center,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Open on Spotify Web",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(30, 215, 96, 1),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            FaIcon(
              FontAwesomeIcons.spotify,
              color: Color.fromRGBO(30, 215, 96, 1),
            ),
          ],
        ),
      ),
    );
  }
}
