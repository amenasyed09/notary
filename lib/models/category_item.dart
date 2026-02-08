class CategoryItem {
  final String id;
  final String name;
  final int workouts;
  final String iconUrl;

  CategoryItem({
    required this.id,
    required this.name,
    required this.workouts,
    required this.iconUrl,
  });

  factory CategoryItem.fromJson(Map<String, dynamic> json) {
    return CategoryItem(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      workouts: json['workouts'] ?? 0,
      iconUrl: json['iconUrl'] ?? '',
    );
  }
}