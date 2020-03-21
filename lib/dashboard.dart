import 'package:flutter/material.dart';
import 'package:absensi/home.dart';
import 'package:absensi/listabsen.dart';
import 'package:absensi/profile.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int pageIndex = 0;

  final PageHome _home = PageHome();
  final PageAbsen _listabsen = PageAbsen();
  final PageProfile _profile = PageProfile();

  Widget _showPage = PageHome();

  Widget _pageChooser(int page){
    switch (page){
      case 0:
      return _home;
      break;
      case 1:
      return _listabsen;
      break;
      case 2:
      return _profile;
      break;
      default:
      return new Container(
        child: new Center(
          child: Text(
            'No Page Found by page choosen',
          ),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Absensi', 
            style: TextStyle(color: Colors.white),)),
      ),
      body: Container(
        child: Center(
          child: _showPage,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items:[
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
           BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.list),
            title: Text('Riwayat Absen'),
          ),
           BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        onTap: (index){
          setState(() {
            _showPage = _pageChooser(index);
            pageIndex = index;
          });
        }, 
      ),
      );
  }
}