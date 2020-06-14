import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'dress',
          ),
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'shirt',
          ),
          Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'formal',
          ),
          Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'casual',
          ),
          Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'pants',
          ),
          Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'accessoriesss',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'shoe',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Category({this.imageCaption, this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 12.0),
              ),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
