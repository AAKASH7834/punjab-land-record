import 'package:flutter/material.dart';
import 'package:panjab_land_records/jamabandilist.dart';
import 'package:panjab_land_records/roznamchalist.dart';
import 'package:panjab_land_records/webviewpage.dart';

class Roznamcha extends StatelessWidget {

  final roznamchalist;
  final String title02;
  Roznamcha({this.roznamchalist, this.title02});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title02, style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white70),),
        backgroundColor: Colors.redAccent,
      ),

      body: ListView.builder(
          itemCount: data_list02.length,
          itemBuilder: (context, index) {

            return MaterialButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewPage(titile: roznamchalist[index]["title02"],
                  url: roznamchalist[index]["web_view_url"],))),

                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top:14.0),
                        child: Stack(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                height: 90,
                                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                                  BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 5.0),
                                ]),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          (roznamchalist[index]["title02"]),
                                          style: const TextStyle(fontSize: 18,  fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      // title: Text(drivingList[index]["title"]),
                                    ]
                                ),
                              )
                            ]
                        )
                    )
                )
            );
          }
      ),
    );
  }
}
