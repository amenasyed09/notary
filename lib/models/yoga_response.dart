import 'package:notary/models/popular_videos.dart';
import 'package:notary/models/yoga_categories.dart';

import 'continue_watching.dart';
import 'header_data.dart';

class YogaResponse {
  final HeaderData header;
  final ContinueWatching continueWatching;
  final YogaCategories yogaCategories;
  final PopularVideos popularVideos;

  YogaResponse({
    required this.header,
    required this.continueWatching,
    required this.yogaCategories,
    required this.popularVideos,
  });

  factory YogaResponse.fromJson(Map<String, dynamic> json) {
    return YogaResponse(
      header: HeaderData.fromJson(json['header']),
      continueWatching: ContinueWatching.fromJson(json['continueWatching']),
      yogaCategories: YogaCategories.fromJson(json['yogaCategories']),
      popularVideos: PopularVideos.fromJson(json['popularVideos']),
    );
  }
}