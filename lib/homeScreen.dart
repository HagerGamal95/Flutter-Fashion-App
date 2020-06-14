import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/horizonalListView.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 200,
      child: Carousel(
        animationDuration: Duration(milliseconds: 1000),
        animationCurve: Curves.fastOutSlowIn,
        autoplay: false,
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg')
        ],
        dotSize: 4,
        indicatorBgPadding: 2,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fashion App'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //header
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text('hager'),
              accountEmail: Text('hager.gamal.awad@gmai.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.grey,
                ),
              ),
            ),

            //body
            MenuItem(
              title: 'Home Page',
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
            MenuItem(
              title: 'My Account',
              icon: Icon(
                Icons.person,
                color: Colors.red,
              ),
            ),
            MenuItem(
              title: 'My Orders',
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.red,
              ),
            ),
            MenuItem(
              title: 'Categories',
              icon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
            ),
            MenuItem(
              title: 'Favourite',
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Divider(),
            MenuItem(
              title: 'Settings',
              icon: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
            ),
            MenuItem(
              title: 'About',
              icon: Icon(
                Icons.help,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          imageCarousel,
          Padding(
            padding: EdgeInsets.all(8),
            child: Text('Categories'),
          ),
          HorizontalList()
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final Icon icon;
  MenuItem({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(title),
        leading: icon,
      ),
    );
  }
}
