import 'package:flutter/material.dart';
import 'package:absensi/home.dart';
import 'package:absensi/listabsen.dart';
import 'package:absensi/profile.dart';
import 'package:absensi/report.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  final PageHome _home = PageHome();
  final PageAbsen _listabsen = PageAbsen();
  final PageProfile _profile = PageProfile();
  final PageReport _report = PageReport();

  Widget _showPage = PageHome();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _home;
        break;
      case 1:
        return _listabsen;
        break;
      case 2:
        return _report;
        break;
      case 3:
        return _profile;
        break;
      default:
        return new Container(
            child: new Center(
          child: Text(
            'No Page Found by page choosen',
          ),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Center(
      //     child: Text(
      //       'Absensi',
      //       style: TextStyle(color: Colors.white),)),
      // ),
      body: Column(
        children: <Widget>[
        //  Container(
        //     height: 170.0,
        //     width: 400.0,
        //     decoration: BoxDecoration(
        //       color: Colors.blue,
        //       borderRadius: BorderRadius.circular(25.0),
        //     ),
        //     child: Container(
        //       padding: EdgeInsets.only(top: 80.0, left: 25.0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Text(
        //             "Hello,", 
        //             style: TextStyle(
        //               color: Colors.white
        //               )
        //             ),
        //           Text(
        //             "Yuni Mertha",
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 30.0,
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ],
        //       ),
        //   ),
        //   ),
          Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: _showPage,
                ),
            ],
              ),
      ),
      ],
      ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List Absen'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text('Report'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _showPage = _pageChooser(index);
            pageIndex = index;
          });
        },
        )
      );
  }
}

// class MyClipper extends CustomClipper<Path>{
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0, size.height - 50);
//     var controllPoint = Offset(50, size.height);
//     var endPoint = Offset(size.width/2, size.height);
//     path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     return null;
//   }
  
// }
