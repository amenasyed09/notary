import 'category_item.dart';

class YogaCategories {
  final List<CategoryItem> list;
  final String viewAllLink;

  YogaCategories({
    required this.list,
    required this.viewAllLink,
  });

  factory YogaCategories.fromJson(Map<String, dynamic> json) {
    return YogaCategories(
      list: (json['list'] as List)
          .map((item) => CategoryItem.fromJson(item))
          .toList(),
      viewAllLink: json['viewAllLink'] ?? '',
    );
  }
}