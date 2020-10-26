import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Principal"),
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
        
        child: ListView(
          children: [
            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.money),
              title: Text("Registro de Caixa"),
              onTap: (){
                Navigator.pushNamed(context, 'cashRegister');
              },
            ),
             Divider(),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text("Cadastrar Produto"),
              onTap: (){
                Navigator.pushNamed(context, 'register');
              },
            ),
             Divider(),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text("Produtos"),
              onTap: (){
                Navigator.pushNamed(context, 'products');
              },
            ),
             Divider(),
            ListTile(
              leading: Icon(Icons.graphic_eq),
              title: Text("Dashboard"),
              onTap: (){
                Navigator.pushNamed(context, 'dailyChart');
              },
            ),
            Divider(),
          ],
        ),
      ),
      
    );
  }
}