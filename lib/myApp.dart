import 'package:flutter/material.dart';

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Checkpoint 01"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.green,
          child: Icon(Icons.whatsapp),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Guilherme Garcia",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook),
                Icon(Icons.call),
                Icon(Icons.email),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/kchorro.jpg"),
                ),
                accountName: Text("GuiGarcia"),
                accountEmail: Text("gui123.garcia@gmail.com"),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("Primary"),
                      leading: Icon(Icons.computer),
                    ),
                    ListTile(
                      title: Text("Social"),
                      leading: Icon(Icons.people),
                    ),
                    ListTile(
                      title: Text("Promotions"),
                      leading: Icon(Icons.account_box_sharp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
