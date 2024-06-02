import 'package:flutter/material.dart';
import 'package:kayseri_gezi_rehberi/models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final VoidCallback onTap;

  PlaceCard({required this.place, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(place.name),
        subtitle: Text(place.description),
        leading: Image.network(place.imageUrl),
        onTap: onTap,
      ),
    );
  }
}
