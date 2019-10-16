import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context) {
    /*Start of Scoped Approach*/
    final bloc = Provider.of(context);
    
    /* End of Scoped Approach*/
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children:[
          /* Start Scoped Approach */
          emailField(bloc),
          passwordField(bloc),
           /* End of Scoped Approach */
          /* Start Single Global Approach*/
          // emailField(),
          // passwordField(),
          /* End of Single Global Approach*/
          Container(margin: EdgeInsets.only(top: 25.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'you@example.com',
            labelText: 'Email Address',
            errorText: snapshot.error,
          ),
        );
      }
    );

    
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorText: snapshot.error,
          ),
        );
      }
    );

    
  }

  Widget submitButton(){
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: (){

      },
    );
  }
}