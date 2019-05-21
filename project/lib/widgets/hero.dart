import 'package:flutter/material.dart';

class HeroView extends StatelessWidget {

  final String image;
  final int tag;
  final double width;
  final double height;
  final VoidCallback onTap;

  HeroView({this.image, this.tag, this.width, this.height, this.onTap});

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Hero(
        tag: tag,
        child: Material(
          child:InkWell(
            onTap: onTap,
            child:Container(
              padding: EdgeInsets.all(5.0),
              child:Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}