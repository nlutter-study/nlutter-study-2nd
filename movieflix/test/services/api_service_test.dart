import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movieflix/services/api_service.dart';

void main() {
  test('popular movies api test', () async {
    var list = await ApiService.getSimpleMovies(FetchType.popular());
    if (kDebugMode) {
      for (var element in list) {
        print(element);
      }
    }
    expect(list.isNotEmpty, true);
  });

  test('now playing movies api test', () async {
    var list = await ApiService.getSimpleMovies(FetchType.nowPlaying());
    if (kDebugMode) {
      for (var element in list) {
        print(element);
      }
    }
    expect(list.isNotEmpty, true);
  });

  test('coming soon movies api test', () async {
    var list = await ApiService.getSimpleMovies(FetchType.comingSoon());
    if (kDebugMode) {
      for (var element in list) {
        print(element);
      }
    }
    expect(list.isNotEmpty, true);
  });

  test('detail movie api test', () async {
    var ids = (await ApiService.getSimpleMovies(FetchType.popular()))
        .map((e) => e.id)
        .toList();

    final details = [];
    for (var id in ids.getRange(0, 3)) {
      var detailMovie = await ApiService.getDetailMovie(id);
      if (kDebugMode) {
        print(detailMovie);
      }
      details.add(detailMovie);
    }

    expect(details.length, 3);
  });
}
