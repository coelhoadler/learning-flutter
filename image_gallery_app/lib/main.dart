import 'package:flutter/material.dart';
import 'package:image_gallery_app/image_details.dart';
import 'package:image_gallery_app/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => ImageGallery(),
        Routes.details: (context) => ImageDetails(),
      },
    );
  }
}

class ImageGallery extends StatefulWidget {
  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  final List<String> images = [
    'assets/images/imagem1.jpg',
    'assets/images/imagem2.jpg',
    'assets/images/imagem3.jpg',
  ];

  void _addImage() {
    setState(() {
      images.add('assets/images/imagem3.jpg');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título da minha página'),
        actions: [
          IconButton(icon: Icon(Icons.add), iconSize: 36, onPressed: _addImage),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.details,
                      arguments: images[index],
                    );
                  },
                  onLongPress: () {
                    setState(() {
                      images.removeAt(index);
                    });
                  },
                  child: Card(
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
