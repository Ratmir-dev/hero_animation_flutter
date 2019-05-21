import 'package:flutter/material.dart';
import 'hero.dart';

class DetailsView extends StatelessWidget {

  final String title;
  final String image;
  final int tag;
  final String description;

  DetailsView({this.title, this.image, this.tag, this.description});

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GestureDetector( 
        onTap: () {
          Navigator.of(context).pop();
        },
        child:Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[ 
              Row(
                children: <Widget>[
                  Expanded(
                    child: HeroView(
                      image: image,
                      tag: tag,
                      height: 200.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris rhoncus magna vitae dui convallis consequat. Fusce finibus, arcu eu vulputate pellentesque, quam metus efficitur lacus, vel ullamcorper erat erat vel velit. Sed id leo eu lorem maximus feugiat. Praesent a varius magna, a rhoncus diam. Aenean mattis urna mi, nec euismod risus vulputate at. Cras non ipsum posuere, dapibus massa eu, commodo ipsum. Vivamus ultricies nibh eu cursus ultrices. Mauris nec sodales diam. Curabitur ex justo, consequat maximus purus vitae, dictum rhoncus sem. Phasellus mollis quam sit amet dui dapibus, ut fermentum lectus dictum. Aliquam tempus maximus congue. Aliquam feugiat mauris mollis augue accumsan commodo. Duis vel mattis sapien, quis vestibulum metus. Proin commodo ac massa vitae commodo. Etiam eu consectetur erat, rutrum elementum magna. Phasellus facilisis ipsum sed metus aliquet ultrices.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 98, 98, 98),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}