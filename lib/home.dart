import 'package:etlab1/assignment.dart';
import 'package:etlab1/attendence.dart';
import 'package:etlab1/login.dart';

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
        actions: [
          IconButton(
              onPressed: () {
                logout(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
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
              onTap: () {
                gotohome(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.auto_awesome_mosaic_rounded),
              title: Text('Attendence'),
              onTap: () {
                gotoattendence(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Assignment'),
              onTap: () {
                gotoassignment(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assessment_rounded),
              title: Text('Results'),
            )
          ]),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 45, 182, 223),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
              child: Container(
                width: 1100,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Column(
                        children: [
                          Text(
                            'Vision Of The College',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.withOpacity(0.6)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Excellence in education and research with socio-economic and environmental outlook',
                            style: TextStyle(letterSpacing: 1, wordSpacing: 2),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  width: 1100,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 47),
                        child: Text(
                          'Mission Of The College',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.withOpacity(0.6)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'To offer state-of-the-art Undergraduate, Postgraduate and Doctoral programmes. To enhance knowledge by engaging in cutting edge research and by undertaking collaborative projects with industry To instill ethical, social and environmental perspectives in designing systems for sustainable development To nurture creativity, self learning and interpersonal skills',
                        style: TextStyle(letterSpacing: 1, wordSpacing: 2),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    width: 150,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_box),
                          Text(
                            'My Profile',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.auto_awesome_mosaic_rounded),
                          Text(
                            'Attendence',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.auto_awesome_mosaic_rounded),
                          Text(
                            'Assignments',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.auto_awesome_mosaic_rounded),
                          Text(
                            'Exam / Quiz',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_alarm),
                        Text(
                          'Circulars',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      //
    );
  }

  void gotohome(BuildContext ctx) {
    Navigator.of(ctx)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => home()));
  }

  void gotoattendence(BuildContext ctx) {
    Navigator.of(ctx)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => attendence()));
  }

  void gotoassignment(BuildContext ctx) {
    Navigator.of(ctx)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => assignment()));
  }

  void logout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => login()), (route) => false);
  }
}
