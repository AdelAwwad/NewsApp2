class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String? url;

  const ArticleModel( {
    required this.image,
    required this.title,
    required this.subtitle,
    this.url,
  });
  factory  ArticleModel.fromJsom(json){
return          ArticleModel(
    image: json['urlToImage'],
    title: json['title'],
    subtitle: json['description'] ??
        'No description available',
    url: json['url'] ?? 'https://flutter.dev'// Default subtitle
);
  }
}
