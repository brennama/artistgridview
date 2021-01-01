import 'package:flutter/material.dart';

class PicScreen extends StatelessWidget {
  List<Artists> artists = [
    Artists('Basquiat', 'https://uploads3.wikiart.org/images/jean-michel-basquiat.jpg!Portrait.jpg'),
    Artists('Gentileschi', 'https://www.nationalgallery.org.uk/media/25638/ng6671_432px.jpg'),
    Artists('Chagall', 'https://upload.wikimedia.org/wikipedia/commons/5/54/Shagal_Choumoff.jpg'),
    Artists('Walker', 'https://www.theartstory.org/images20/new_design/bio_box/1x1/bio_box_walker_kara_1x1.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Artists"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Container(
            padding: EdgeInsets.all(16.0),
            child: GridView.builder(
              itemCount: artists.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                final artist = artists[index];
                return Stack(
                  children: [
                    Image.network(
                      artist.imageUrl,
                      fit: BoxFit.fill,
                    ),
                    Align(
                      child:
                          Container(color: Colors.white, child: Text(artist.name)),
                      alignment: Alignment.bottomLeft,
                    )
                  ],
                );
              },
            )),
      ),
    );
  }
}

class Artists {
  final String name; 
  final String imageUrl;
  
  
  Artists(this.name, this.imageUrl);
  
}
