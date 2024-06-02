import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:kayseri_gezi_rehberi/models/place.dart';

class GeziRehberiProvider with ChangeNotifier {
  bool isLoading = true;
  List<Place> places = [];

  GeziRehberiProvider() {
    fetchPlaces();
  }

  Future<void> fetchPlaces() async {
    final String response = await rootBundle.loadString('assets/places.json');
    List<dynamic> data = json.decode(response);
    places = data.map((json) => Place.fromJson(json)).toList();
    isLoading = false;
    notifyListeners();
  }
}
