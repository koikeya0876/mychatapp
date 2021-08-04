import 'package:flutter/material.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Twitter Login App'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Login With Twitter'),
            onPressed: () async {
              final twitterLogin = TwitterLogin(
                apiKey: 'DPivFvXuJs4HzlUkok07DdvSi',
                apiSecretKey:
                    'ttl6NqPmJFLITLnzcYjPb1Mwbr3AZmJSg1HyXOZyYkoAkWekql',
                redirectURI:
                    'https://mychatapp-a75f4.firebaseapp.com/__/auth/handler',
              );
              final authResult = twitterLogin.login();
/*              switch (authResult.status) {
                case TwitterLoginStatus.loggedIn:
                  // success
                  print('====login success====');
                  break;
                case TwitterLoginStatus.cancelledByUser:
                  // cancel
                  print('====login cancel====');
                  break;
                case TwitterLoginStatus.error:
                  // error
                  print('====login error====');
                  break;
              }*/
            },
          ),
        ),
      ),
    );
  }
}
