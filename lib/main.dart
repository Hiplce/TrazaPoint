

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba4/confirmacion.dart';
import 'package:prueba4/dniProvider.dart';
import 'package:prueba4/listado.dart';
import 'package:prueba4/login.dart';
import 'package:prueba4/principal.dart';
import 'package:prueba4/registro.dart';
import 'package:prueba4/verificador.dart';
import 'manual.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(  create: (BuildContext context) => DniProvider())
      ],

      child: MaterialApp(

        title: 'Trazatic',
        initialRoute: "/",
        routes: {
          "/":(BuildContext context)=> Verificador(),
          "/principal":(BuildContext context)=> Principal(),
          "/registro":(BuildContext context)=> Registro(),
          "/confirm": (BuildContext context)=> Confirm(),
          "/listado": (BuildContext context)=> Listado(),
          "/login" : (BuildContext context)=> Login(),
          "/manual":(BuildContext context)=> Manual(),
        },
      ),
    );
  }




}
