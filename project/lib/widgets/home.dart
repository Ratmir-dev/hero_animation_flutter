import 'package:flutter/material.dart';
import 'hero.dart';
import 'details.dart';
class HomeView extends StatelessWidget {

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20.0),
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        childAspectRatio: 1.5,
        children: <Widget>[
          HeroView(
            image:'lib/assets/fw14.jpg', 
            tag: 1,
            width: 200.0, 
            height: 50.0,
            onTap: openDetails(
              context,
              'Williams FW14',
              'lib/assets/fw14.jpg',
              1,
              ''
            ),
          ),
          HeroView(
            image:'lib/assets/mp4.jpg', 
            tag: 2, 
            width: 
            200.0, 
            height: 50.0,
            onTap: openDetails(
              context,
              'Mclaren MP4/4',
              'lib/assets/mp4.jpg',
              2,
              ''
            ),
          ),
          HeroView(
            image:'lib/assets/supra.png', 
            tag: 3, 
            width: 200.0, 
            height: 50.0,
            onTap: openDetails(
              context,
              'Toyota Supra',
              'lib/assets/supra.png',
              3,
              '',
            ),
          ),
          HeroView(
            image:'lib/assets/testarossa.jpg', 
            tag: 4, 
            width: 200.0, 
            height: 50.0,
            onTap: openDetails(
              context,
              'Ferrari Testarossa',
              'lib/assets/testarossa.jpg',
              4,
              ''
            ),
          ),
          HeroView(
            image:'lib/assets/nsx.jpg', 
            tag: 5, 
            width: 200.0, 
            height: 50.0,
            onTap: openDetails(
              context,
              'Honda NSX',
              'lib/assets/nsx.jpg',
              5,
              ''
            ),
          ),
          HeroView(
            image:'lib/assets/zonda.jpg', 
            tag: 6, 
            width: 200.0, 
            height: 50.0,
            onTap: openDetails(
              context,
              'Pagani Zonda',
              'lib/assets/zonda.jpg',
              6,
              ''
            ),
          ),
        ],
      ),
    );

  }

  openDetails(BuildContext context, String title, String image, int tag, String description) {
    return () {
      Navigator.of(context).push( 
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return DetailsView(
              title: title,
              description: description,
              image: image,
              tag: tag
            );
          }
        )
      );
    };
  }

}