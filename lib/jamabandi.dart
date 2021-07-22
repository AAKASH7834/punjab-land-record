import 'package:flutter/material.dart';
import 'package:panjab_land_records/jamabandilist.dart';
import 'package:panjab_land_records/webviewpage.dart';

class JamaBandi extends StatelessWidget {

  final jamabandilist;
  final String title01;
  JamaBandi({this.jamabandilist, this.title01});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title01, style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white70),),
        backgroundColor: Colors.redAccent,
      ),

      body: ListView.builder(
          itemCount: data_list01.length,
          itemBuilder: (context, index) {

            return MaterialButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>WebViewPage(titile: jamabandilist[index]["title01"],
                  url: jamabandilist[index]["web_view_url"],))),

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
                                          (jamabandilist[index]["title01"]),
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
