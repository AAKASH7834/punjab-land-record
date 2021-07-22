import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panjab_land_records/cadastralmap.dart';
import 'package:panjab_land_records/connectionrecord.dart';
import 'package:panjab_land_records/courtcase.dart';
import 'package:panjab_land_records/deed.dart';
import 'package:panjab_land_records/fardreq.dart';
import 'package:panjab_land_records/feed.dart';
import 'package:panjab_land_records/integrated.dart';
import 'package:panjab_land_records/jamabandi.dart';
import 'package:panjab_land_records/jamabandilist.dart';
import 'package:panjab_land_records/mutation.dart';
import 'package:panjab_land_records/mutationafter.dart';
import 'package:panjab_land_records/nakal.dart';
import 'package:panjab_land_records/onlinelist.dart';
import 'package:panjab_land_records/onlinereq.dart';
import 'package:panjab_land_records/roznamcha.dart';
import 'package:panjab_land_records/roznamchalist.dart';
import 'package:panjab_land_records/taxragister.dart';
import 'package:panjab_land_records/waterconnection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panjab Land Record',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F3F5),
      appBar: AppBar(
        title: Text('Panjab Land Record'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: GridView(
          physics: BouncingScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => JamaBandi(jamabandilist: data_list01, title01: 'Jamabandi',)
                  ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),

                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 18, top: 22),
                        child: Image(image: AssetImage('assets/images/book1.gif'), height: 70, width: 160),),

                      Text('Jamabandi', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Mutation()
                  ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(image: AssetImage('assets/images/file.gif'), height: 60, width: 80),),

                      Text('Mutation', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Roznamcha(roznamchalist: data_list02, title02: "Roznamcha",)
                  ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 18),
                        child: Image(
                            image: AssetImage('assets/images/newspaper.gif'),
                            height: 90,
                            width: 160),
                      ),
                      Text(
                        'Roznamcha',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MutationAfter()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/suit.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        '  Mutation After Registry',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnlineRequst(Onlinelist: data_list03, title03: "Online Request for Fard",)));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/drop.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Online Requst for Fard',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IntegratedProperty()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/build.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Integrated Property',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CourtCase()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/hammer.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Court Case',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CadastralMap()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/map.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Cadastral Map',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyTax()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/ragister.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Property Tax Register',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistryDeed()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/deed.png'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Registry Deed',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NakalVerification()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/nakal.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Nakal Verification',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WaterConnection()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/water.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Water Sewerage Connection',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CorrectionRecord()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/pen.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Correction In Record',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBack()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Image(
                            image: AssetImage('assets/images/feed.gif'),
                            height: 60,
                            width: 80),
                      ),
                      Text(
                        'Feedback',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w900,
                            fontSize: 20), textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
