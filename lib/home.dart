import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  bool statusmasuk = false;

  @override
  Widget build(BuildContext context) {
    return statusmasuk == false ? Column(
      children: <Widget>[
        Container(
            height: 170.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 80.0, left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello,", 
                    style: TextStyle(
                      color: Colors.white
                      )
                    ),
                  Text(
                    "Yuni Mertha",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ),
          ),
        Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Padding(padding: const EdgeInsets.only(top: 200.0),
                        child: Center(
                          child: SizedBox(
                            height: 55.0 ,
                            width: 150.0,
                          child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              statusmasuk = true;
                            });
                          },
                          child: Text(
                            "Masuk", 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              ),
                            ),
                          color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
        ),
      ],
    ) : Column(
      children: <Widget>[
        Container(
            height: 170.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 80.0, left: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello,", 
                    style: TextStyle(
                      color: Colors.white
                      )
                    ),
                  Text(
                    "Yuni Mertha",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ),
          ),
        Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
          child: Container(
            height: 900.0,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("19-03-2020"),
                            RaisedButton(
                            onPressed: (){
                              setState(() {
                              statusmasuk = false;
                            });
                            },
                            child: Text("Keluar", style: TextStyle(color: Colors.white)),
                            color: Colors.blue,
                          )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Masuk  : 12:30:00",
                              ),
                            Text(
                              "Keluar   : -"
                            ),
                         ],
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Colors.blue,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: const EdgeInsets.all(5.0)),
                      Text("Laporan :", style: TextStyle(
                        fontSize: 15.0,),
                        textAlign: TextAlign.right,
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                          child:TextField(
                            minLines: 10,
                            maxLines: 15,
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: 'masukkan teks',
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(color: Colors.blue),
                                )
                              ),
                            ),
                          ),
                              RaisedButton(
                              onPressed: (){},
                              child: Text("kirim", style: TextStyle(color: Colors.white),),
                              color: Colors.blue,
                              ),
                            ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                Container(
                                    width: 250.0,
                                    height: 65.0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                             Expanded(
                                               child: Text(
                                                "19-03-2020", 
                                                style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.0,)),
                                             ),
                                             Spacer(),
                                             Expanded(
                                               child: Text(
                                                 "17:05:00",
                                                 style: TextStyle(
                                                   color : Colors.black,
                                                   fontSize: 15.0,
                                                 ),
                                                 ),
                                               )
                                          ],
                                        ),
                                    Row(
                                     children: <Widget>[
                                       Padding(padding: const EdgeInsets.only(top: 8.0)),
                                       Expanded(
                                         child: Text(
                                          'asdfjkl',
                                         style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 15.0,)),
                                       ),
                                     ],
                                   ),
                                   ]
                              ),
                            )),
                          Container(),
                        ],
                      )
                    ],
                  )
                ),
            ),
        ),
              )
                      ]
                      ),
                    ],
                  )
        ),
              ],
            ),
          )
        ),
      ],
    ); 
  }
}