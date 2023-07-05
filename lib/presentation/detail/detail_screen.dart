import 'package:flutter/material.dart';
import 'package:image_search_3day/domain/model/photo.dart';

class DetailScreen extends StatelessWidget {
  final Photo photo;

  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('디테일 페이지'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('views: ${photo.views}'),
            const SizedBox(height: 8),
            Hero(
              tag: photo.id,
              child: Image.network(photo.webformatURL),
            ),
          ],
        ),
      ),
    );
  }
}
