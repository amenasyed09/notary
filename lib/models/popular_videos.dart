import 'package:notary/models/popular_video_item.dart';

class PopularVideos {
  final List<PopularVideoItem> list;
  final String seeAllLink;

  PopularVideos({
    required this.list,
    required this.seeAllLink,
  });

  factory PopularVideos.fromJson(Map<String, dynamic> json) {
    return PopularVideos(
      list: (json['list'] as List)
          .map((item) => PopularVideoItem.fromJson(item))
          .toList(),
      seeAllLink: json['seeAllLink'] ?? '',
    );
  }
}