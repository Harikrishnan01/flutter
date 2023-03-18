import 'package:etlab1/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _admno = TextEditingController();
  final _password = TextEditingController();
  final _keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 182, 223),
      body: Center(
        child: Form(
          key: _keyform,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'L O G I N P A G E',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 425, left: 425),
                child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Admission No / Username'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter the admission no';
                      } else {
                        return null;
                      }
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 425, left: 425),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter the password';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 45, 182, 223))),
                  onPressed: () {
                    if (_keyform.currentState!.validate()) {
                      GotoHome(context);
                    } else {
                      print('Error Occured');
                    }
                    //GotoHome(context);
                  },
                  icon: Icon(Icons.check),
                  label: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }

  void GotoHome(BuildContext ctx) {
    final _ad = _admno.text;
    final _pass = _password.text;
    if (_ad == _pass) {
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => home()));
    }
  }
}
