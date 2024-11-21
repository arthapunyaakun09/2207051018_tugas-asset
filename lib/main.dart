import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageSliderScreen(),
    );
  }
}

class ImageSliderScreen extends StatelessWidget {
  // Daftar URL gambar
  final List<String> images = [
    'https://i.pinimg.com/736x/42/f1/cd/42f1cd04752298df3f594fe9946d11ff.jpg',
    'https://i.pinimg.com/736x/47/f8/25/47f8255f406b44802e5cddd54dee9f09.jpg',
    'https://i.pinimg.com/enabled_lo_mid/736x/30/73/b9/3073b953792e4a310b3cca1af7d33e9a.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rumata'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SizedBox(
          width: 400, 
          height: 300, 
          child: PageView(
            children: images.map((image) {
              return Image.network(
                image,
                fit: BoxFit.cover,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
