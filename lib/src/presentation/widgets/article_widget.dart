import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../domain/models/models.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({
    super.key,
    required this.article,
    this.onArticlePressed,
    this.isRemovable = false,
    this.onRemove,
  });

  final Article article;
  final bool isRemovable;
  final void Function(Article article)? onRemove;
  final void Function(Article article)? onArticlePressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
            start: 14, end: 14, bottom: 7, top: 7),
        height: MediaQuery.of(context).size.width / 2.2,
        child: Row(
          children: [
            _buildImage(context),
            _buildTitleAndDescription(),
            _buildRemovableArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.08),
          ),
          child: Image.network(
            article.urlToImage ?? '',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Text(
                  '404\nNOT FOUND',
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndDescription() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            //title
            Text(
              article.title ?? '',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Butler',
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            //Description
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  article.description ?? '',
                  maxLines: 2,
                ),
              ),
            ),
            //DateTime
            Row(
              children: [
                const Icon(Icons.timer_outlined, size: 16),
                const SizedBox(width: 4),
                Text(
                  article.publishedAt ?? '',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRemovableArea() {
    if (isRemovable) {
      return GestureDetector(
        onTap: _onRemove,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            Ionicons.trash_outline,
            color: Colors.red,
          ),
        ),
      );
    }
    return Container();
  }

  void _onTap() {
    if (onArticlePressed != null) {
      onArticlePressed?.call(article);
    }
  }

  void _onRemove() {
    if (onRemove != null) {
      onRemove?.call(article);
    }
  }
}
