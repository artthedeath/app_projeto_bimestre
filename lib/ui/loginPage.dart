import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Lorem Ipsum Felpudo"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(
            hoverColor: Colors.blue,
            icon: Icon(Icons.perm_device_info),
          onPressed: (){
            Navigator.pushNamed(context, 'about');
          }
        )
        ],

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height*0.96,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors:[Colors.blueAccent,Colors.purpleAccent, Colors.blueGrey ],
            radius: 1.3
          )
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset("imagens/felpudoCorp2.png", scale:0.8)),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Login",
                  ),
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText:"Senha",
                  ),
                  obscureText: true,
                ),
                RaisedButton(
                  child: Text("Login"),
                  onPressed: (){
                    Navigator.pushNamed(context, 'mainPage');
                    //if(_formKey.currentState.validate()){
                      
                    //}
                  })

              ],),
          ),
        ),
      ),
      
    );
  }
}
