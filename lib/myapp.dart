import 'dart:ffi';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppTest();
  }
}

class MyAppTest extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.purple[700],
          body: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(60),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 50),
                  child: Image.asset(
                    'assets/images/bfcaiLogo.png',
                    width: 160,
                    height: 160,
                  ),
                ),
                const Text(
                  'BFCAI',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 50,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 20, offset: Offset(0, 10))
                      ]),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter your email',
                              label: const Text('Email'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter password',
                              label: const Text('Password'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                          child: const TextButton(
                              onPressed: null,
                              child: Text('Forgot Password?'))),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.purple[300])),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
