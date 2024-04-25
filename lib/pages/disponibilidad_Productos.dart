import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_jefe_cocina/common/paleta.dart';
import 'package:kioskito_jefe_cocina/common/style.dart';
import 'package:kioskito_jefe_cocina/structure/bonones.dart';
import 'package:kioskito_jefe_cocina/structure/cont_texto.dart';
import 'package:kioskito_jefe_cocina/structure/objects.dart';
import 'package:kioskito_jefe_cocina/structure/table.dart';

class DisponibilidadProductos extends StatefulWidget {
  const DisponibilidadProductos({super.key});

  @override
  State<DisponibilidadProductos> createState() =>
      _DisponibilidadProductosState();
}

class _DisponibilidadProductosState extends State<DisponibilidadProductos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.1,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.1,
                ),
                child: ContenedorTexto(
                  w: MediaQuery.of(context).size.width * 0.5,
                  h: MediaQuery.of(context).size.height * 0.1,
                  text: 'Disponibilidad Productos',
                  maxF: 160,
                  minF: 20,
                  maxL: 1,
                  posicionText: Alignment.center,
                  style: temaApp.textTheme.titleMedium,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: TableWidget(
                  columns: const ['Id', 'Producto', 'Disponibilidad'],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.1,
                            child: const AutoSizeText(
                              '1',
                              minFontSize: 18,
                              maxFontSize: 18,
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: const AutoSizeText(
                              'Natalia Daniela Martínez Córdoba',
                              minFontSize: 16,
                              maxFontSize: 22,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            child: BtnIconoDisponibilidad2(
                              op: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * 0.18),
                    child: Btn1(
                      w: MediaQuery.of(context).size.width * 0.1,
                      h: MediaQuery.of(context).size.height * 0.05,
                      op: () {
                        Navigator.pushNamed(context, '/pedidosAprobados');
                      },
                      child: const TextoBotones(text: 'Volver'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
