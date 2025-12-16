import 'dart:ui';

class SourceItem {
  final String imagePath;
  final Color indicatorColor;
  final String title;
  final String statusText;
  final Color statusColor;
  final String subtitle1;
  final String subtitleValue1;
  final String subtitle2;
  final String subtitleValue2;

  SourceItem({
    required this.imagePath,
    required this.indicatorColor,
    required this.title,
    required this.statusText,
    required this.statusColor,
    required this.subtitle1,
    required this.subtitleValue1,
    required this.subtitle2,
    required this.subtitleValue2,
  });
}
