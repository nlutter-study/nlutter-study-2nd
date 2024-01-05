String formattedElapsedTime({
  DateTime? nowDateTime,
  required int targetMillisecondsSinceEpoch,
}) {
  final passedDuration = Duration(
    milliseconds: (nowDateTime?.millisecondsSinceEpoch ??
            DateTime.now().millisecondsSinceEpoch) -
        targetMillisecondsSinceEpoch,
  );
  if (passedDuration.inDays > 0) {
    final s = (passedDuration.inDays == 1) ? "" : "s";
    return "${passedDuration.inDays} day$s ago";
  }
  if (passedDuration.inHours > 0) {
    final s = (passedDuration.inHours == 1) ? "" : "s";
    return "${passedDuration.inHours} hour$s ago";
  }
  if (passedDuration.inMinutes > 0) {
    final s = (passedDuration.inMinutes == 1) ? "" : "s";
    return "${passedDuration.inMinutes} minute$s ago";
  }
  return "now";
}
