import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String valueFirstname,valueLastName, valueEmial, valuePassword,valueConfirmPassword, valuePhoneno;

  GlobalKey<FormState> registrationform = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Form(
                key: registrationform,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,color: Colors.black),
                      decoration: InputDecoration(hintText: "First Name"),
                      onChanged: (value){
                        valueFirstname = value;
                      },
                      validator: (value){
                        if(value == null || value.length < 3){

                          return "Enter a valid name";
                        }

                      },

                    ),
                    TextFormField(
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,color: Colors.black),
                      decoration: InputDecoration(hintText: "Last Name"),
                      onChanged: (value){

                        valueLastName = value;
                      },
                      validator: (value){
                        if(value == null || value.length<3){
                          return "Enter a valid last name";
                        }

                      },


                    ),
                    TextFormField(
                      style: TextStyle(
                          fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),
                      decoration: InputDecoration(hintText: "Email"),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value){
                        valueEmial= value;
                      },
                      validator: (value){
                        if(value == null || value.length < 6){
                          return "Enter a valid last name";
                        }

                      },


                    ),
                    TextFormField(
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),
                      decoration: InputDecoration(hintText: "Password"),
                      onChanged: (value){

                        valuePassword= value;
                      },
                      validator: (value){
                        if(value == null || value.length<6){

                          return "Enter a valid password";
                        }

                      },

                    ),
                    TextFormField(
                      style: TextStyle(
                          fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),
                      decoration: InputDecoration(hintText: "Confirm Password"),
                      onChanged: (value){
                        valueConfirmPassword = value;
                      },
                      validator: (value){
                        if(value == null || value.length<6){

                          return "Enter a valid Password";
                        }
                        if(valuePassword != value){
                          return "password not match";
                        }

                      },
                    ),
                    TextFormField(
                      style: TextStyle(
                          fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                      decoration: InputDecoration(hintText: "Phone no"),
                      keyboardType: TextInputType.phone,
                      onChanged: (value){

                        valuePhoneno = value;
                      },
                      validator: (value){
                        if(value == null || value.length != 11){

                          return "Enter a valid phone";
                        }

                      },
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 35),
                      child: Text("submit"),
                      textColor: Colors.black87,
                      onPressed: (){
                        if(registrationform.currentState.validate()){

                          print("Button, click");

                        }
                      },
                    ),
                    SizedBox(height: 5,),
                    RaisedButton(
                      child: Text("Already have account? Login to continoue"),
                      onPressed: (){
                        print("Login button pressed");
                      },

                    )
                  ],
                ),
              ),
            ),
          ),
        )


    );
  }
}
