import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final urlImages = [
    'https://m.media-amazon.com/images/M/MV5BNDBkYTJjZjgtNDlhNi00ZTE1LWI2NmYtMDBjMDUzOWMwNzQwXkEyXkFqcGdeQXVyMTEyNzgwMDUw._V1_.jpg',
    'https://m.media-amazon.com/images/I/91h+pIFBunL.jpg',
    'https://m.media-amazon.com/images/M/MV5BOWRkOTYzZTQtMzQwNi00NDYwLTk4NjUtN2FjYTI4Y2UzM2RjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg',
    'https://terrigen-cdn-dev.marvel.com/content/prod/1x/theavengers_lob_crd_03_0.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTM4OGJmNWMtOTM4Ni00NTE3LTg3MDItZmQxYjc4N2JhNmUxXkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
            child: CarouselSlider.builder(
          options: CarouselOptions(
              aspectRatio: 1,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              // reverse: true,
              autoPlayInterval: Duration(seconds: 2)),
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];

            return buildImage(urlImage, index);
          },
        )),
      );

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(color: Colors.grey),
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
