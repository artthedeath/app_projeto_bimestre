import 'package:app_projeto_bimestre/ui/aboutMePage.dart';
import 'package:app_projeto_bimestre/ui/cashRegisterPage.dart';
import 'package:app_projeto_bimestre/ui/dailyChartPage.dart';
import 'package:app_projeto_bimestre/ui/mainPage.dart';
import 'package:app_projeto_bimestre/ui/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:app_projeto_bimestre/ui/loginPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {
      'login': (context)=> LoginPage(),
      'about': (context)=> AboutMePage(),
      'mainPage': (context)=> MainPage(),
      'cashRegister': (context)=> CashRegisterPage(),
      'register': (context) => RegisterPage(),
      'dailyChart': (context) => DailyChartPage(),
    },
  ));
}

