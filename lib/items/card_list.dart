import 'package:flutter/material.dart';
import 'package:news_app/items/category_card.dart';
import 'package:news_app/models/card_model.dart';

class ListOfCards extends StatelessWidget {
  const ListOfCards({super.key});
  final List<CardCatigory> cards = const [
    CardCatigory(image: 'assets/business.webp', text: 'Business'),
    CardCatigory(image: 'assets/entertainment.jpeg', text: 'Entertainment'),
    CardCatigory(image: 'assets/healty.jpeg', text: 'Health'),
    CardCatigory(image: 'assets/science.jpeg', text: 'Science'),
    CardCatigory(image: 'assets/sports.webp', text: 'Sports'),
    CardCatigory(image: 'assets/event_technology.jpg', text: 'Technology'),
    CardCatigory(image: 'assets/general.jpeg', text: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: cards.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(cardItem: cards[index]);
          }),
    );
  }
}
