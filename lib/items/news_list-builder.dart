import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/service_model.dart';
import 'package:news_app/items/tile_list.dart';
import 'package:news_app/models/article_model.dart';

class NewsListBilder extends StatefulWidget {
  const NewsListBilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListBilder> createState() => _NewsListBilderState();
}

class _NewsListBilderState extends State<NewsListBilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewService(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('oops  was an error, try later'),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 1.3,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }
        });
    //
  }
}
