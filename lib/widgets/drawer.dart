import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png";

    return Drawer(
      child: Container(
        color: Colors.lightGreen,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Keval Asodariya"),
                accountEmail: Text("kpasodariya@gmail.com"),
                currentAccountPicture: Image.network(imageUrl),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.printer,
              ),
              title: Text(
                "Statment",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.power,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
