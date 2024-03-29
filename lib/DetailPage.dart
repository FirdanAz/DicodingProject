import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_movie/MoviePopulerModel.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key, required this.movie}) : super(key: key);
  Results? movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text(movie!.originalTitle.toString()),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            ColorFiltered(colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.darken)),
            Image.network("https://www.themoviedb.org/t/p/w220_and_h330_face/"+movie!.backdropPath.toString(), scale: 0.001,)
          ],
        ),
      ),
    );;
  }
}
