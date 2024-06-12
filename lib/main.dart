import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kayseri_gezi_rehberi/providers/gezi_rehberi_provider.dart';
import 'package:kayseri_gezi_rehberi/screens/splash_screen.dart';

void main() {
  runApp(const KayseriGeziRehberi());
}

class KayseriGeziRehberi extends StatelessWidget {
  const KayseriGeziRehberi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GeziRehberiProvider(),
      child: MaterialApp(
        title: 'Kayseri Gezi Rehberi',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
