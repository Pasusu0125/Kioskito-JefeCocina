import "package:flutter/material.dart";
import "package:kioskito_jefe_cocina/common/paleta.dart";

class Circulo extends StatelessWidget {
  final double r;
  final String link;
  const Circulo({super.key, required this.r, required this.link});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: r,
      backgroundImage: NetworkImage(link),
    );
  }
}

class BtnIconoInfo extends StatelessWidget {
  final op;
  const BtnIconoInfo({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.info,
        color: btnIconoInfo,
      ),
    );
  }
}

class BtnIconoEstado extends StatelessWidget {
  final op;
  const BtnIconoEstado({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.soup_kitchen,
        color: btnEstado,
      ),
    );
  }
}

class BtnIconoAprobar extends StatelessWidget {
  final op;
  const BtnIconoAprobar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.check_circle,
        color: btnIconoAprobar,
      ),
    );
  }
}

class BtnIconoDisponibilidad extends StatelessWidget {
  final op;
  final double size;
  const BtnIconoDisponibilidad({super.key, this.op, required this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.no_food,
        color: btnIconoDisponibilidad,
        size: size,
      ),
    );
  }
}

class BtnIconoDisponibilidad2 extends StatelessWidget {
  final op;

  const BtnIconoDisponibilidad2({super.key, this.op,});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
      icon: Icon(
        Icons.battery_alert,
        color: btnDisponibilidad,
      
      ),
    );
  }
}
