import 'package:flutter/material.dart';

class PageAbsen extends StatelessWidget {

  List hari = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];

  @override
  Widget build(BuildContext context) {
        return Scaffold (
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            color: Colors.white,
            child: ListView.builder(
              itemCount: hari.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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
                              width: 270.0,
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
                                            hari[index], 
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,)),
                                          ),
                                       Spacer(),
                                       Expanded(
                                         child: Text(
                                           "Masuk  : -",
                                         )
                                         ) 
                                          ],
                                        ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                        "19-03-2020",
                                        style: TextStyle(
                                        color: Colors.grey
                                      )),
                                      ),
                                      Spacer(),
                                      Expanded(
                                        child: Text(
                                         "Keluar   : -"
                                        ))
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
    )
        )
        );
  }
}