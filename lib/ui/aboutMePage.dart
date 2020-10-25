import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações"),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        ),
      body:Container(
         padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.96,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors:[Colors.blueAccent,Colors.purpleAccent, Colors.blueGrey ],
                   radius: 1.3
                )
              ),
        child: SingleChildScrollView(
         child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("imagens/felpudoCorp3.jpg", scale:0.8)),
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ],
              ),
            ],
          ),
        ),
      ) ,
      
    );
  }
}