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
        padding: EdgeInsets.all(10),
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
                labelText: "Produto",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Valor de compra",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Valor de venda",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "quantidade",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ), 
            TextFormField(
              decoration: InputDecoration(
                labelText: "Validade",
                labelStyle: TextStyle(color: Colors.black87)
              ),
            ), 
            RaisedButton(
              child: Text("Adicionar!"),
              onPressed: (){}
            ) 
          ]
          
        ),
      ),
      
    );
  }
}