import 'package:cuite/cubit/app_cubit_logics.dart';
import 'package:cuite/cubit/app_cubits.dart';
import 'package:cuite/pages/detail_page.dart';
import 'package:cuite/pages/nav_pages/main_page.dart';
import 'package:cuite/pages/welcome_page.dart';
import 'package:cuite/services/data_services.dart';
//import 'package:cuite/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(data: DataServices()),
          child: AppCubitLogics(),
        ));
  }
}
