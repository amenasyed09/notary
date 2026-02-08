import 'package:notary/models/video_stats.dart';

class PopularVideoItem {
  final String id;
  final String title;
  final VideoStats stats;
  final String details;
  final String thumbnailUrl;

  PopularVideoItem({
    required this.id,
    required this.title,
    required this.stats,
    required this.details,
    required this.thumbnailUrl,
  });

  factory PopularVideoItem.fromJson(Map<String, dynamic> json) {
    return PopularVideoItem(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      stats: VideoStats.fromJson(json['stats']),
      details: json['details'] ?? '',
      thumbnailUrl: json['thumbnailUrl'] ?? '',
    );
  }
}