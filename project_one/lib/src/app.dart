import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:dart_random_choice/dart_random_choice.dart';
import 'models/random_info_model.dart';
import 'widgets/random_info_list.dart';
import 'dart:convert';

class App extends StatefulWidget{
  createState(){
    return AppState();
  }
    
}

class AppState extends State<App> {
  List<RandomInfoModel> infos = []; 
  List<String> params = ['trivia', 'year', 'date', 'math'];
  List<RandomInfoModel> like = [];
  List<RandomInfoModel> dislike = [];
  
  void fetchInfo() async{
    var el = randomChoice(params);
    var response = await get('http://numbersapi.com/random/$el?json');
    var randomInfoModel = RandomInfoModel.fromJson(json.decode(response.body));
    setState(() {
     infos.add(randomInfoModel);
    });
  }

  Widget build(context){
    return MaterialApp(
      title: 'Project One',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.pink[700],
        )
      ),
      home: Scaffold(
        backgroundColor: Colors.deepPurple[900],
        appBar: AppBar(
          title:Text('Random Fact App'),
        ),
        body: RandomInfoList(infos.reversed.toList()),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.pets),
          label: Text('Try Me!'),
          backgroundColor: Colors.pinkAccent[400],
          onPressed: fetchInfo,
        ),
      ),
    );
  }
}