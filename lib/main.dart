import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainScreenState createState() => _MainScreenState();
}

Key _drawerKey = new Key('drawerKey');

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  TabController _tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        key: _drawerKey,
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Text('Drawer')
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(FontAwesomeIcons.pencilAlt),
      //   onPressed: () {},
      // ),
      appBar: AppBar(
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: _tabcontroller,
          tabs: <Widget>[
            SizedBox(
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              height: 35.0,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  "Popular",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              height: 35.0,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.reddit),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          color: Colors.grey,
        ),
      ),
      body: TabBarView(
        controller: _tabcontroller,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'r/BeAmazed  *  5h * v.redd.it',
                            ),
                            Text(
                              'Before and after drinking alchohol',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 80.0,
                                width: 80.0,
                                color: Colors.orangeAccent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        // crossAxisAlignment: ,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_upward),
                                onPressed: () {},
                              ),
                              Text('10K'),
                              IconButton(
                                icon: Icon(Icons.arrow_downward),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.mode_comment),
                                Text(' 455')
                              ],
                            ),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.reply),
                                Text('Share')
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Divider(),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'r/BeAmazed  *  5h * v.redd.it',
                            ),
                            Text(
                              'Before and after drinking alchohol',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 80.0,
                                width: 80.0,
                                color: Colors.orangeAccent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        // crossAxisAlignment: ,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_upward),
                                onPressed: () {},
                              ),
                              Text('10K'),
                              IconButton(
                                icon: Icon(Icons.arrow_downward),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.mode_comment),
                                Text(' 455')
                              ],
                            ),
                            onPressed: () {},
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.reply),
                                Text('Share')
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Text("Popular"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        currentIndex: _tabIndex,
        onTap: (value) {
          setState(() {
            _tabIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              FontAwesomeIcons.reddit,
              color: Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.deepPurple,
            icon: Icon(
              Icons.ac_unit,
              color: Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              child: Icon(FontAwesomeIcons.pencilAlt),
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
              // backgroundColor: Colors.blue,
              icon: Icon(
                Icons.mail,
                color: Colors.grey,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              // backgroundColor: Colors.green,
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              title: Text("")),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
