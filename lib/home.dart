import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('H O M E P A G E'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Container(
          child: ListView(children: [
            DrawerHeader(
                child: Center(
              child: Text(
                'H O M E P A G E',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.library_add),
              title: Text('Library'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Books'),
            )
          ]),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 45, 182, 223),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 100,
          left: 100,
        ),
        child: GridView.builder(
            itemCount: 16,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
              );
            }),
      ),
    );
  }

  void color() {
    Colors.black;
  }
}
