import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Drawer App',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Tutorial'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Colors.blue, Colors.blueAccent])),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/flutter5786.jpg',
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          'Flutter',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      )
                    ],
                  ),
                )),
            CustomListTile(Icons.person, 'profile', () => {}),
            CustomListTile(Icons.notifications, 'Notification', () => {}),
            CustomListTile(Icons.settings, 'settings', () => {}),
            CustomListTile(Icons.lock, 'Log Out', () => {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    onTap = onTap;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.blueAccent,
          onTap: () => {},
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
