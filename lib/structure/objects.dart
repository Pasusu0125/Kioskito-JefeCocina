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
  final VoidCallback onTap;
  const BtnIconoInfo({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.info,
        color: btnIconoInfo,
      ),
    );
  }
}

class BtnIconoEstado extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoEstado({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.soup_kitchen,
        color: btnEstado,
      ),
    );
  }
}

class BtnIconoAprobar extends StatelessWidget {
  final VoidCallback onTap;
  const BtnIconoAprobar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.check_circle,
        color: btnIconoAprobar,
      ),
    );
  }
}

class BtnIconoDisponibilidad extends StatelessWidget {
  final VoidCallback onTap;
  final double size;
  const BtnIconoDisponibilidad(
      {super.key, required this.onTap, required this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.no_food,
        color: btnIconoDisponibilidad,
        size: size,
      ),
    );
  }
}

class BtnIconoDisponibilidad2 extends StatelessWidget {
  final VoidCallback onTap;

  const BtnIconoDisponibilidad2({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        Icons.battery_alert,
        color: btnDisponibilidad,
      ),
    );
  }
}
