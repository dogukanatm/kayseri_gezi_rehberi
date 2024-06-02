import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:kayseri_gezi_rehberi/main.dart';
import 'package:provider/provider.dart';
import 'package:kayseri_gezi_rehberi/providers/gezi_rehberi_provider.dart';
// ignore: unused_import
import 'package:kayseri_gezi_rehberi/widgets/place_card.dart';
import 'package:kayseri_gezi_rehberi/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GeziRehberiProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Kayseri Gezi Rehberi'),
      ),
      body: provider.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: provider.places.length,
              itemBuilder: (context, index) {
                final place = provider.places[index];
                return PlaceCard(
                  place: place,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
