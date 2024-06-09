import 'package:flutter/material.dart';
import 'package:kayseri_gezi_rehberi/core/data.dart';
import 'package:kayseri_gezi_rehberi/screens/detail_screen.dart';

class FullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popüler Yerler'),
      ),
      body: ListView.builder(
        itemCount: Data.places.length,
        itemBuilder: (context, index) {
          final place = Data.places[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    title: Data.places[index]['title']!,
                    location: Data.places[index]['location']!,
                    image: Data.places[index]['image']!,
                    rating: Data.places[index]['rating']!,
                    detail: Data.places[index]['detail']!,
                  ),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(10.0),
                leading: Image.asset(place['image'],
                    width: 60, height: 60, fit: BoxFit.cover),
                title: Text(place['name']),
                subtitle: Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text(place['rating'].toString()),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
