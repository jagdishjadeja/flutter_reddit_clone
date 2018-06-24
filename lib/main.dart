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
      drawer: Drawer(),
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabcontroller,
          tabs: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text("Home"),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text("Popular"),
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          FontAwesomeIcons.reddit,
          color: Colors.grey,
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
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
              title: Text("")),
          BottomNavigationBarItem(
              // backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.ac_unit,
                color: Colors.grey,
              ),
              title: Text("")),
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
