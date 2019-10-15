import 'package:flutter/material.dart';
import '../models/random_info_model.dart';
import 'package:dart_random_choice/dart_random_choice.dart';

class RandomInfoList extends StatelessWidget{
  final List<RandomInfoModel> infos;
  List<Color> colors = [
    Color(0xff2c3e50), Color(0xff16a085), 
    Color(0xff2980b9), Color(0xffe74c3c),
    Color(0xff8e44ad), Color(0xfff39c12),
    Color(0xff7f8c8d), Color(0xff27ae60),
  ];
  RandomInfoList(this.infos);

  Widget build(context){
    return ListView.builder(
      itemCount: infos.length,
      itemBuilder: (context, int index){
        return Container(
          decoration: BoxDecoration(
            //border: Border.all(
              //color:Colors.pink[900],
              //width: 2.0,
            //),
            color:randomChoice(colors),
          ),
          
          padding: EdgeInsets.all(25.0),
          //margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                child:Text(
                    infos[index].type, 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28,
                    ),
                ),
                margin: EdgeInsets.only(bottom:10.0),
              ),
              Container(
                child:Text(
                  infos[index].text, 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color:Colors.white,
                  ),
                ),
                margin: EdgeInsets.only(bottom:20.0),
              ),
              Container(
                margin: EdgeInsets.only(bottom:50.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.pink,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.thumb_down,
                          color: Colors.pink,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.share,
                          color: Colors.pink,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          )
        );
        //return Text(infos[index].text);
      },
    );
  }
}