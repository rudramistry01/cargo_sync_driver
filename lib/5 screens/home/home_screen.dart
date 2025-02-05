import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Manage Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About',
                style: TextStyle(fontSize: 16.sp),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            SizedBox(
                height: 20.h), // Add some space between the icon and the text
            Text(
              'Tap the icon to open the drawer',
              style: TextStyle(fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
