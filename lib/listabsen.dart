import 'package:flutter/material.dart';

class PageAbsen extends StatelessWidget {

  List hari = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];

  @override
  Widget build(BuildContext context) {
        return Container(
          height: 900.0,
            child: Column(
              children: <Widget>[
                        Container(
                        height: 170.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 80.0,),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Riwayat Absensi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ),
                          Container(
                            child: SingleChildScrollView(
                            physics: ScrollPhysics(),
                            child: ListView.builder(
                              itemCount: hari.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) => Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
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
                                              width: 280.0,
                                              height: 90.0,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                       Expanded(
                                                          child: Text(
                                                            hari[index]+",19 Maret 2020", 
                                                            style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 18.0,)),
                                                          ),
                                                      //  Spacer(),
                                                      //  Expanded(
                                                      //    child: Text(
                                                      //      "Masuk  : -",
                                                      //    )
                                                      //    ) 
                                                          ],
                                                        ),
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(padding: EdgeInsets.only(top: 10.0)),
                                                      Expanded(
                                                        child: Text(
                                                        "IN :08:45:59",
                                                        style: TextStyle(
                                                        color: Colors.grey
                                                      )),
                                                      ),
                                                      Spacer(),
                                                      Expanded(
                                                        child: Text(
                                                         "Total Hours"
                                                        ))
                                                    ],
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Text(
                                                        "OUT :17:10:55",
                                                        style: TextStyle(
                                                        color: Colors.grey
                                                      )),
                                                      ),
                                                      Spacer(),
                                                      Expanded(
                                                        child: Text(
                                                         "5.5"
                                                        ))
                                                    ],
                                                  ),
                                                 Container(
                                                   decoration: BoxDecoration(
                                                     color: Colors.blueAccent,
                                                   ),)
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
            ),
        ),
      ],
      ),
  );
  }
}