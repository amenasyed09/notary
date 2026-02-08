class VideoStats {
  final int kcal;
  final int durationMin;

  VideoStats({
    required this.kcal,
    required this.durationMin,
  });

  factory VideoStats.fromJson(Map<String, dynamic> json) {
    return VideoStats(
      kcal: json['kcal'] ?? 0,
      durationMin: json['durationMin'] ?? 0,
    );
  }
}