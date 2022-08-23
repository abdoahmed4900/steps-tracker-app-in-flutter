// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'information_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            fillColor: Colors.white),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController userController;

  late TextEditingController passwordController;

  @override
  void initState() {
    userController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              const Color.fromARGB(255, 75, 173, 44),
              Colors.lime.shade400
            ],
                stops: const [
              0.2,
              0.4
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 65),
              child: Image.asset('images/main_logo.png'),
            ),
            const Text(
              'Login to your account',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 33),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 40),
              child: TextField(
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    hintStyle: TextStyle(fontSize: 13),
                    hintText: 'username'),
                controller: userController,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 40),
              child: TextField(
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'password',
                    hintStyle: TextStyle(fontSize: 13)),
                controller: passwordController,
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(40)),
              width: 125,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (userController.value.text.isNotEmpty &&
                      userController.value.text.isNotEmpty) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const InformationPage(),
                    ));
                  }
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 23, 121, 1)),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
