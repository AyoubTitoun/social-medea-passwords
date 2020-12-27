import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayoub' 's passwords',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/background_login.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20, top: 240, bottom: 30),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.7)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    "Login!",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                      padding: EdgeInsets.only(right: 250.00),
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 25.00, fontWeight: FontWeight.w500),
                      )),
                  SizedBox(height: 10.0),
                  Container(
                      padding: EdgeInsets.only(right: 20.0, left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Enter your username",
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                      padding: EdgeInsets.only(right: 250.00),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 25.00, fontWeight: FontWeight.w500),
                      )),
                  SizedBox(height: 10.0),
                  Container(
                      padding: EdgeInsets.only(right: 20.0, left: 15.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Enter your password",
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                      )),
                  SizedBox(height: 12.00),
                  Container(
                    padding: EdgeInsets.only(left: 200.00),
                    child: Text(
                      "Forget password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20.00,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: RaisedButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                        height: 70.00,
                        width: 170.00,
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.0),
                  Container(
                    padding: EdgeInsets.only(left: 110.0),
                    child: Row(
                      children: [
                        Text(
                          "New User?",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Sign up!",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
