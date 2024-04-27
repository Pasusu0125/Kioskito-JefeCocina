import 'package:flutter/material.dart';
import 'package:kioskito_jefe_cocina/pages/disponibilidad_productos.dart';
import 'package:kioskito_jefe_cocina/pages/informacion_pedidos.dart';
import 'package:kioskito_jefe_cocina/pages/inicio_sesion.dart';
import 'package:kioskito_jefe_cocina/pages/pedidos_aprobados.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioSesion(),
        '/pedidosAprobados': (context) => const PedidosAprobados(),
        '/infoPedidos': (context) => const InformacionPedidos(),
        '/dispProductos': (context) => const DisponibilidadProductos(),
      },
    );
  }
}
