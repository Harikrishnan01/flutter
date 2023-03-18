import 'package:etlab1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class assignment extends StatelessWidget {
  const assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 182, 223),
      appBar: AppBar(
        title: Text('A S S I G N M E N T   P A G E'),
        leading: IconButton(
            onPressed: () {
              backbutton(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          //color: Color.fromARGB(255, 45, 182, 223),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 900,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
          )),
    );
  }

  void backbutton(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => home()));
  }
}
