import 'package:clone_youtube_app/Api.dart';
import 'package:clone_youtube_app/model/Video.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  /*_listVideos() {
    Api api = Api();
    return api.toSearch("");
  }*/

  @override
  Widget build(BuildContext context) {

    Api api = Api();
    api.toSearch("");

    return Container(
      child: Center(
        child: Text(
          "Inicio",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}
