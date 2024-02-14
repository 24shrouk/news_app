import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cardItem});
  final CardCatigory cardItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: cardItem.text,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 160,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(cardItem.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              cardItem.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
