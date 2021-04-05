import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      title: 'dynamic studio',
      home: Scaffold(
        appBar: AppBar(
          title: Text('dynamic studio'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  int currentIndex;

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8B0R4sOJ-z8pEJ5niI__mcub6znCbLGlaig&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        SizedBox(
          height: 10,
        ),
        ExpansionTile(
            backgroundColor: Colors.blueGrey,

            title: Text('first category'),
            leading: Icon(Icons.image),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 200,
                    initialPage: 0,
                    onPageChanged: (index, _) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    autoPlay: true,
                    autoPlayInterval: Duration(milliseconds: 600),
                  ),
                  items: imgList.map((images) {
                    return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Image.network(
                          images,
                          fit: BoxFit.cover,
                        ));
                  }).toList(),
                ),
              ),
            ]),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ExpansionTile(
            backgroundColor: Colors.blueGrey,
            title: Text('second category'),
            leading: Icon(Icons.image),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    height: 250,
                    autoPlay: true,
                    autoPlayInterval: Duration(milliseconds: 600),
                    scrollDirection: Axis.vertical,
                    initialPage: 2,
                  ),
                  items: imgList.map((images) {
                    return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Image.network(
                          images,
                          fit: BoxFit.cover,
                        ));
                  }).toList(),
                ),
              )
            ]
        ),
        Divider(),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ExpansionTile(
            backgroundColor: Colors.blueGrey,
              title: Text('contact us'),
              leading: Icon(Icons.contact_page),
              children: [
                Divider(),
                Padding(
                  child: ListTile(
                    tileColor: Colors.grey.shade400,
                    leading: Icon(Icons.phone),
                    title: Text('contact us'),
                    subtitle: Text('+20 01011459031'),
                  ),
                  padding: EdgeInsets.only(left:10,top:4,right:10),
                ),
                Divider(),
                Padding(
                  child: ListTile(
                    tileColor: Colors.grey.shade400,
                    leading: Icon(Icons.mail),
                    title: Text('mail us'),
                    subtitle: Text('ahmed.abdelalem61@gmail.com'),
                  ),
                  padding: EdgeInsets.only(left:10,bottom:4,right:10),
                )
              ]),
        ),

        Padding(


          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            child: Text(
              'copyright are protected by arabic powerd company',
             style: TextStyle(backgroundColor: Colors.blueGrey,fontSize: 15,fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        /* ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            // Find the ScaffoldMessenger in the widget tree
            // and use it to show a SnackBar.
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),*/
      ],
    );
  }
}
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _x = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        onPressed: () {
          final x = SnackBar(
            // title: Text('alert dialog'),
            content: Text('hello from the other side'),
          );

        },
        child: Text('click me '),
        color: Colors.red,
      ),
    );
  }

  Widget setPage(Key _k) {
    Color red800 = Colors.red[800];
    final snackBar = SnackBar(content: Text('hello world'));
    return Stack(
      children: <Widget>[
        Container(
          // Background
          child: Center(
            child: Text(
              "Home",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          color: red800,
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
        ),
        Container(),

        // Required some widget in between to float AppBar

        Positioned(
          // To take AppBar Size only
          top: 120.0,
          left: 20.0,
          right: 20.0,
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.menu,
              color: red800,
            ),
            primary: false,
            title: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey))),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: red800),
                onPressed: () {},
              ),
              IconButton(
                  icon: Icon(Icons.notifications, color: red800),
                  onPressed: () {
                    /*final x = AlertDialog(
                      title: Text('alert dialog'),
                      content: Text('hello from the other side'),
                    );
                    showDialog(context: context, child: x);*/
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  })
            ],
          ),
        ),
        Positioned(
            // To take AppBar Size only
            top: 200.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () {
                    final x = AlertDialog(
                      title: Text('alert dialog'),
                      content: Text('hello from the other side'),
                      actions: [
                        RaisedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('close'),
                        )
                      ],
                    );
                    showDialog(
                        context: context, child: x, barrierDismissible: false);
                  },
                  child: Text('click me '),
                  color: Colors.red,
                ),
              ],
            )),
      ],
    );
  }
}
*/
