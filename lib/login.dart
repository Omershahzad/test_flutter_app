import 'package:flutter/material.dart';

class Login extends StatefulWidget{


  @override
  LoginState createState() {
    // TODO: implement createState
    return LoginState();
  }

}

class LoginState extends State<Login>{
  String valueUserEmail,valueUserPassword;
  GlobalKey<FormState> LoginFormState = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:  Text("Login Screen"),
        backgroundColor:  Colors.blueAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: LoginFormState,
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: TextStyle(color: Colors.redAccent),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Email"),
                  onChanged: (value){

                    valueUserEmail = value;

                  },
                  validator: (value){
                    if(value == null || value.length < 6){
                      return "Enter a valid E-mail";
                    }
                  },
                ),
                TextFormField(
                  style: TextStyle(color: Colors.redAccent),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(hintText: "password"),
                  onChanged: (value){
                    valueUserPassword = value;
                  },
                  validator: (value){
                    if(value == null || value.length < 6){
                      return "Enter a valid Pasword";
                    }

                  },
                ),
                SizedBox(
                  height: 35,
                ),
                RaisedButton(

                  onPressed: (){
                    if(LoginFormState.currentState.validate()){

                      print("Button, click");
                    }

                  },
                  color: Colors.amberAccent,
                  child: Text("Login",style:  TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}