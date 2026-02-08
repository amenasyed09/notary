import 'package:notary/models/video_item.dart';

class ContinueWatching {
  final VideoItem current;
  final VideoItem next;
  final String viewAllLink;

  ContinueWatching({
    required this.current,
    required this.next,
    required this.viewAllLink,
  });

  factory ContinueWatching.fromJson(Map<String, dynamic> json) {
    return ContinueWatching(
      current: VideoItem.fromJson(json['current']),
      next: VideoItem.fromJson(json['next']),
      viewAllLink: json['viewAllLink'] ?? '',
    );
  }
}