import 'package:clone_youtube_app/screens/Biblioteca.dart';
import 'package:clone_youtube_app/screens/EmAlta.dart';
import 'package:clone_youtube_app/screens/Inicio.dart';
import 'package:clone_youtube_app/screens/Inscricao.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indexCurrentBottomNavigatorBar = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
          ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){},
          )
        ],
      ),
      body: screens[_indexCurrentBottomNavigatorBar],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexCurrentBottomNavigatorBar,
        onTap: (indexBottomNavigatorBar){
          setState(() {
            _indexCurrentBottomNavigatorBar = indexBottomNavigatorBar;
          });
        },

        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            title: Text("Início"),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            title: Text("Em alta"),
            icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
            title: Text("Inscrições"),
            icon: Icon(Icons.subscriptions)
          ),
          BottomNavigationBarItem(
            title: Text("Biblioteca"),
            icon: Icon(Icons.folder)
          ),
        ]
      ),
    );
  }
}