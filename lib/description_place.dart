import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            starBorder,
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    return Column(
      children: <Widget>[titleStars, description],
    );
  }
}
