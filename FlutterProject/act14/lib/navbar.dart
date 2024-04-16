import 'package:act14/friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Mohammed",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: Text(
              "mohad@utas.edu.om",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/images.jpeg"),
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img.jpg"), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            onTap: () => print('favorite'),
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("Friends"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Friends()));
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () => null
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("settings"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () => SystemNavigator.pop(),
          )
        ],
      ),
    );
  }
}
