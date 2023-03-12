import 'package:etlab1/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splashsc extends StatefulWidget {
  const splashsc({super.key});

  @override
  State<splashsc> createState() => _splashscState();
}

class _splashscState extends State<splashsc> {
  @override
  void initState() {
    Gotonext(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/etlab.png',
              height: 75,
              width: 75,
            ),
            Text(
              'Etlab',
              style:
                  GoogleFonts.roboto(fontSize: 50, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> Gotonext(BuildContext ctx) async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => Splashscreen()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
