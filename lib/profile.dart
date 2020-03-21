import 'package:flutter/material.dart';
import 'main.dart';

class PageProfile extends StatefulWidget {
  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
                Container(
                  height: 340.0,
                  color: Color.fromARGB(255,43,72,119)
                ),
                Positioned(
                  width : 350.0,
                  top : MediaQuery.of(context).size.height / 5,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                          ),
                      ),
                      Text(
                        "User",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          ) 
                        ),
                    ],)
                )
            ]
          ),
                  SizedBox(height: 10.0),
                  Text(
                    "User@gmail.com",
                    style: TextStyle(
                      color: Color.fromARGB(255,43,72,119),
                      fontSize: 17.0,
                      ) 
                    ),
                  SizedBox(height: 15.0),
                  Container(
                    height: 40.0,
                    width: 130.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () => {
                        Navigator.push(
                          context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                        ),
                        },
                        child: Center(
                          child: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.white,)
                          ),
                        )
                      ),
                    )
                  )
        ],
      ),
    );
  }
}

// class PageProfile extends StatelessWidget {
//   // TextStyle _nameTextStyle = TextStyle(
//   //     color: Colors.white,
//   //     fontSize: 28.0,
//   //     fontWeight: FontWeight.w700,
//   //   );

//   Widget _buildcover(Size screenSize) {
//     return Container(
//       height: 300.0,
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255,43,72,119)
//       ),
//     //   child: Center(
//     //   child: Column(
//     //     children: <Widget>[
//     //       SizedBox(height: screenSize.height / 6.4),
//     //       Container(
//     //         width: 140.0,
//     //         height: 140.0,
//     //         decoration: BoxDecoration(
//     //             color: Colors.white,
//     //             shape: BoxShape.circle
//     //         ),
//     //       ),
//     //        Text('User', style: _nameTextStyle,
//     // )
//     //     ],
//     //   )
//     // ),
//     );
//   }
//   Widget _buildprofile (){
//     return Center(
//       child: Container(
//         width: 140.0,
//         height: 140.0,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             shape: BoxShape.circle
//         ),
//       )
//     );
//   }
//   Widget _buildname (){
//     TextStyle _nameTextStyle = TextStyle(
//       color: Colors.white,
//       fontSize: 28.0,
//       fontWeight: FontWeight.w700,
//     );
//     return Text(
//       'User', style: _nameTextStyle,
//     );
//   }
//   Widget _buildemail(BuildContext context){
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
//       decoration: BoxDecoration(
//         color: Theme.of(context).scaffoldBackgroundColor,
//         borderRadius: BorderRadius.circular(4.0),
//     ),
//     child: Text(
//       'user@gmail.com',
//       style: TextStyle(
//         fontFamily: 'Spectral',
//         color: Color.fromARGB(255,43,72,119),
//         fontSize: 20.0,
//         fontWeight: FontWeight.w300,
//       ),
//     ),
//     );
//   }

//   @override
//   Widget build(BuildContext context){
//     Size screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           _buildcover(screenSize),
//           SafeArea(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: <Widget>[
//                   SizedBox(height: screenSize.height / 6.4),
//                   _buildprofile(),
//                   _buildname(),
//                   _buildemail(context),
//                    Container(
//                      padding: EdgeInsets.symmetric(vertical: 50.0),
//                      child: SizedBox(
//                        width: 100.0,
//                        height: 50.0,
//                        child: RaisedButton(
//                           onPressed: (){},
//                           child: Text("Log Out", style: TextStyle(color: Colors.white),),
//                           color: Colors.blue,
//                           ),
//                      ),
//                    ),
//                 ]
//               ),
//               )
//           ),
//         ],
//       )
//     );
//   }
// }