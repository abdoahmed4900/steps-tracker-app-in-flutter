// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 10),
                child: Image.asset('images/small logo.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22, bottom: 24),
              child: Text(
                'Welcome to your account!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 300,
                height: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Your Health card',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF177901),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Name :    Mohamed Mounir',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Age :        36',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: Container(
                            width: 190,
                            height: 190,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 3,
                                    color: Color.fromARGB(255, 23, 121, 1))),
                            child: Center(
                                child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: FaIcon(
                                    color: Color.fromARGB(255, 23, 121, 1),
                                    FontAwesomeIcons.personRunning,
                                    size: 80,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '2000',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 23, 121, 1)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 62, bottom: 9),
                                  child: Text(
                                    'step',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromARGB(255, 23, 121, 1)),
                                  ),
                                )
                              ],
                            ))),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50, left: 10),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.chevronLeft),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
