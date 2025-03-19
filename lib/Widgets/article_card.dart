import 'package:flutter/material.dart';
import 'package:newsapp/Methods/Login_Methods.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/view/Web_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ( ) async{
            Uri url = Uri.parse(articleModel.url!);
            if (! await launchUrl(url,mode: LaunchMode.inAppBrowserView)){
              throw Exception('Could not open $url');
            }
          },
          child: Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: FadeInImage(
                    placeholder: const AssetImage("assets/default.avif"),
                    image: articleModel.image?.isNotEmpty ?? false
                        ? NetworkImage(articleModel.image!)
                        : const AssetImage("assets/default.avif"),
                    fit: BoxFit.cover,
                    imageErrorBuilder: (context, error, stackTrace) =>
                    const Image(
                      image: AssetImage("assets/default.avif"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                articleModel.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                articleModel.subtitle ?? 'No description available',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
