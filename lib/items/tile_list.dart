import 'package:flutter/material.dart';
import 'package:news_app/items/newslist.dart';
import 'package:news_app/models/article_model.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return CatigoryTile(articalModel: articles[index]);
      },
    ));
  }
}
