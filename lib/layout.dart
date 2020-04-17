import 'package:flutter/material.dart';

void main() => runApp(Layout());

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container (
      child: Image.asset('assets/gettuk.png'),
    );
    Widget titleSection = Container (
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Gethuk Mantap',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Gethuk adalah makanan yang dibuat dari bahan Ketela,'
            'Gethuk juga memiliki bentuk yang bermacam-macam dan'
            'berwarna macam-macam.',
        textAlign: TextAlign.justify,
      ),
    );
    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );
    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('720 Reviews'),
      ],
    );
    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark,
            "Prep",
            "25 min"
        ),
        _buildMenuSection(Icons.timer,
            "Cook",
            "30 Minutes"
        ),
        _buildMenuSection(Icons.fastfood,
            "Feeds",
            "4-7"
        ),
      ],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            'Learn Layouting',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Icon(Icons.search, color: Colors.black,)
          ],
        ),
        body: ListView(
            children: <Widget>[
              imageSection,
              titleSection,
              descriptionSection,
              Container(
                padding: EdgeInsets.only(bottom: 24),
                child: reviewSection,
              ),
              menuSection,
            ],
        ),
      ),
    );
  }
}


Widget _buildTextSection(
    String text,
    double textSize,
    double paddingTop,
    ){
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
    IconData iconData,
    String title,
    String timestamp,
    ){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12)
    ],
  );
}