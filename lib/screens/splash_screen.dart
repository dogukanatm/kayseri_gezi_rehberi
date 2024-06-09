import 'package:flutter/material.dart';
import 'package:kayseri_gezi_rehberi/screens/login_screen.dart'; // Giriş ekranını import etmeyi unutmayın

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Arka planda tam ekran resim
          Image.asset(
            'assets/hgg.PNG',
            fit: BoxFit.cover,
          ),
          // Üstte Hoşgeldiniz yazısı ve altta Başlayın butonu
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Text(
                  'Hoşgeldiniz',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Buton arka plan rengi
                    onPrimary: Colors.white, // Buton yazı rengi
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Başlayın'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
