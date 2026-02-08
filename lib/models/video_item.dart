class VideoItem {
  final String id;
  final String title;
  final List<String> tags;
  final String imageUrl;

  VideoItem({
    required this.id,
    required this.title,
    required this.tags,
    required this.imageUrl,
  });

  factory VideoItem.fromJson(Map<String, dynamic> json) {
    return VideoItem(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      tags: List<String>.from(json['tags'] ?? []),
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}
