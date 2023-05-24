import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        toolbarHeight: 150,
        backgroundColor: Colors.green,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(children: [
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              labelText: 'Username',
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
           TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                labelText: 'Password',
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
          ),
          TextButton(
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                const Text.rich(TextSpan(children: [
                  TextSpan(text: 'Forgot ', style: TextStyle(fontSize: 14)),
                  TextSpan(
                      text: 'Username / Password?',
                      style: TextStyle(fontSize: 14, color: Colors.green)),
                ])),
              ],
            ),
            onPressed: null,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: Size(400, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
            onPressed: () {},
            child: const Text('SIGN IN'),
          ),
          SizedBox(
            height: 200,
          ),
          Text.rich(TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyle(color: Colors.grey))),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {},
              child: Text.rich(TextSpan(
                  text: 'SIGN UP NOW',
                  style: TextStyle(fontSize: 16, color: Colors.green))))
        ]),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}