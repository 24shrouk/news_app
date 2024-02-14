import 'package:flutter/material.dart';
import 'package:news_app/items/card_list.dart';
import 'package:news_app/items/news_list-builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: ListOfCards(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                NewsListBilder(category: 'general'),
              ],
            )

            /*Column(
            children: [
              ListOfCards(),
              SizedBox(
                height: 32,
              ),
              Expanded(child: ListOfTile()),
            ],
          ),*/
            ));
  }
}
