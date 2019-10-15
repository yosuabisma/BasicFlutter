import 'package:flutter/material.dart';
import '../models/random_info_model.dart';

class RandomInfoList extends StatelessWidget{
  final List<RandomInfoModel> infos;

  RandomInfoList(this.infos);

  Widget build(context){
    return ListView.builder(
      itemCount: infos.length,
      itemBuilder: (context, int index){
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color:Colors.pink[900],
              width: 2.0,
            ),
            color:Colors.white,
          ),
          
          padding: EdgeInsets.all(25.0),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                child:Text(
                    infos[index].type, 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
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
                  ),
                ),
                margin: EdgeInsets.only(bottom:20.0),
              ),
              Container(
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