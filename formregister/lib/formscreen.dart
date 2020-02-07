import 'package:flutter/material.dart';

class Formscreen extends StatefulWidget  {
  @override
  _FormscreenState createState() => _FormscreenState();
}

class _FormscreenState extends State<Formscreen> {

  String _name;
  String _email;
  String _password;
  String _phone;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState> ();

  Widget _buildNameField(){return TextFormField(
    decoration: InputDecoration(labelText: 'name'),
    keyboardType: TextInputType.text ,
    validator: (String value){
      if(value.isEmpty){
        return 'Name is required';
      }
    },
    onSaved: (String value){_name = value; },
  );}

  Widget _buildEmail(){{return TextFormField(
    decoration: InputDecoration(labelText: 'email'),
    keyboardType: TextInputType.emailAddress,
    validator: (String value){
      if(value.isEmpty){
        return 'email is required';
      }
    },
    onSaved: (String value){_email = value; },
  );}}

  Widget _buildPassword(){{return TextFormField(
    decoration: InputDecoration(labelText: 'password'),
    keyboardType: TextInputType.visiblePassword ,
    validator: (String value){
      if(value.isEmpty){
        return 'password is required';
      }
    },
    onSaved: (String value){_password = value; },
  );}}

  Widget _buildPhone(){{return TextFormField(
    decoration: InputDecoration(labelText: 'phone'),
    maxLength: 11,
    keyboardType: TextInputType.phone,
    validator: (String value){
      if(value.isEmpty){
        return 'phone is required';
      }
    },
    onSaved: (String value){_phone = value; },
  );}}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Demo")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              _buildNameField(),
              _buildEmail(),
              _buildPassword(),
              _buildPhone(),
              SizedBox(height:30),
              RaisedButton(
                child:Text('Submit'),
                onPressed: (){
                  //kalau user xisi
                  if(!_formKey.currentState.validate()){
                    return;
                  }
                  //kalaua user isi
                  _formKey.currentState.save();
                  print(_name);
                  print(_email);
                  print(_phone);
                  print(_password);
              
              
                },
                )
            ],
            ),
        ),
         
      )
    );
  }
}