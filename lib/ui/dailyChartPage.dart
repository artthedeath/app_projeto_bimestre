import 'package:flutter/material.dart';

class DailyChartPage extends StatefulWidget {
  @override
  _DailyChartPageState createState() => _DailyChartPageState();
}

class _DailyChartPageState extends State<DailyChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Gráfico do Dia'),
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
        child:Column() ,),
      
    );
  }
}