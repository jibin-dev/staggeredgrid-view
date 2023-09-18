import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List <String>imagelist=['https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/240/232/136694637.jpg',
'https://dvineuncorked.files.wordpress.com/2011/09/orange.jpg',
'https://www.wallpaperflare.com/static/947/293/305/pple-leaves-tail-slice-wallpaper.jpg',
'https://www.gannett-cdn.com/-mm-/cec01b6067e6a621611069b751341797d19f809f/c=0-218-4288-2630/local/-/media/2017/04/26/Brevard/B9327244777Z.1_20170426084937_000_GI3I4LULC.1-0.jpg?width=3200&height=1800&fit=crop&format=pjpg&auto=webp',
'https://get.pxhere.com/photo/plant-grape-vine-wine-fruit-food-produce-agriculture-grapevine-grapes-winegrowing-flowering-plant-vitis-land-plant-grapevine-family-zante-currant-839340.jpg',
'http://womenpla.net/wp-content/uploads/2014/12/guava1.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('staggered gridview'),),backgroundColor: Colors.black,
    body: Container(
      margin: EdgeInsets.all(20),
      child: new StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemCount: imagelist.length,
         itemBuilder: (context,index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: imagelist[index]),
            ),
          );
         }, staggeredTileBuilder: (index){
          return new StaggeredTile.count(1, index.isEven ? 1.20: 1.8);
         }) ,
    ),);
  }
}