import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  build(context){
    return Provider(
      child: MaterialApp(
        title: 'Log In',
        home: Scaffold(
          body: LoginScreen(),
        ),
      )
    );
  }
}