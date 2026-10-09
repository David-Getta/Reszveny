class NewsItem {
  const NewsItem({
    required this.headline,
    required this.url,
    required this.publishedAt,
    this.source,
    this.summary,
    this.imageUrl,
  });

  final String headline;
  final String url;
  final DateTime publishedAt;
  final String? source;
  final String? summary;
  final String? imageUrl;
}
