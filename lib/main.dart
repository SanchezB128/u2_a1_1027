import 'package:flutter/material.dart';
import 'package:sanchez1027/pantallas1027/panel1027/panel_pantalla1027.dart';

void main() => runApp(const MiAppPizza1027());

class MiAppPizza1027 extends StatelessWidget {
  const MiAppPizza1027({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pizza  Sanchez1027",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: const PanelPantalla1027(),
    );
  }
}
