import 'package:flutter/material.dart';

class CashRegisterPage extends StatefulWidget {
  @override
  _CashRegisterPageState createState() => _CashRegisterPageState();
}

class _CashRegisterPageState extends State<CashRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Registro de Caixa'),
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
          children: [
            FloatingActionButton(
              backgroundColor: Colors.red,
              child: Text("+",
              style: TextStyle(fontSize: 30, color: Colors.black),),  
              onPressed: (){}
            )
          ],
        ),
      ),
      
    );
  }
}