import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Cadastro'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(icon: Icon(Icons.perm_device_info),
          onPressed: (){
            Navigator.pushNamed(context, 'about');
          }
        )
        ],

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height*0.96,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors:[Colors.blueAccent,Colors.purpleAccent, Colors.blueGrey ],
            radius: 1.3
          )
        ),
        child:Column(
          
          children:[
            TextFormField(
              decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText:"Produto:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
            ),
             Divider(),
            TextFormField(
              decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText:"Valor de compra:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
            ),
             Divider(),
            TextFormField(
              decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText:"Valor de venda:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
            ),
            Divider(),
            TextFormField(
              decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText:"Quantidade:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
            ),
            Divider(), 
            TextFormField(
              decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText:"Validade:",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
            ),
             Divider(), 
            RaisedButton(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text("Adicionar!"),
              onPressed: (){}
            ) 
          ]
          
        ),
      ),
      
    );
  }
}