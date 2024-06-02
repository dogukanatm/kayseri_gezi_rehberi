import 'package:flutter/material.dart';
import 'package:kayseri_gezi_rehberi/models/place.dart';

class DetailScreen extends StatelessWidget {
  final Place place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(place.imageUrl),
            SizedBox(height: 10),
            Text(
              place.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(place.description),
          ],
        ),
      ),
    );
  }
}
