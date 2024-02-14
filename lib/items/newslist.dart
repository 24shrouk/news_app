import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class CatigoryTile extends StatelessWidget {
  const CatigoryTile({super.key, required this.articalModel});
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  articalModel.image ??
                      'https://cdn.vectorstock.com/i/preview-1x/65/30/default-image-icon-missing-picture-page-vector-40546530.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                articalModel.title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                articalModel.subtitle ?? 'No subtitle',
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
