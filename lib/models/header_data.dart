class HeaderData {
  final String greeting;
  final int notificationCount;
  final String searchPlaceholder;
  final bool shareEnabled;

  HeaderData({
    required this.greeting,
    required this.notificationCount,
    required this.searchPlaceholder,
    required this.shareEnabled,
  });

  factory HeaderData.fromJson(Map<String, dynamic> json) {
    return HeaderData(
      greeting: json['greeting'] ?? '',
      notificationCount: json['notificationCount'] ?? 0,
      searchPlaceholder: json['searchPlaceholder'] ?? '',
      shareEnabled: json['shareEnabled'] ?? false,
    );
  }
}