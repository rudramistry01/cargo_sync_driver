import 'package:cargo_sync_driver/6%20global%20widgets/text_wideget.dart';
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
              decoration: const BoxDecoration(
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
              leading: const Icon(Icons.home),
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
              leading: const Icon(Icons.settings),
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
              leading: const Icon(Icons.info),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            15.horizontalSpace,
            Container(
              height: 300.sp,
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    15.verticalSpace,
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                    ),
                    const CustomText(
                      text: "Welcome",
                      textType: TextType.heading,
                      textWeight: TextWeight.semiBold,
                      color: Colors.white,
                    ),
                    const CustomText(
                      text: "Rudra Mistry",
                      textType: TextType.heading,
                      textWeight: TextWeight.semiBold,
                      color: Colors.white,
                    ),
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.verticalSpace,
                        const CustomText(
                          text: "DriverID :- ",
                          textType: TextType.bodyLarge,
                          textWeight: TextWeight.semiBold,
                          color: Colors.white,
                        ),
                        5.horizontalSpace,
                        const CustomText(
                          text: "6355311375",
                          textType: TextType.bodyLarge,
                          textWeight: TextWeight.semiBold,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.verticalSpace,
                        const CustomText(
                          text: "Vehicle ID :- ",
                          textType: TextType.bodyLarge,
                          textWeight: TextWeight.semiBold,
                          color: Colors.white,
                        ),
                        5.horizontalSpace,
                        const CustomText(
                          text: "6355311375",
                          textType: TextType.bodyLarge,
                          textWeight: TextWeight.semiBold,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
