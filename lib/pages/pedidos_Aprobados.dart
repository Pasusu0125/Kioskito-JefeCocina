import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kioskito_jefe_cocina/common/paleta.dart';
import 'package:kioskito_jefe_cocina/common/style.dart';
import 'package:kioskito_jefe_cocina/structure/bonones.dart';
import 'package:kioskito_jefe_cocina/structure/cont_texto.dart';
import 'package:kioskito_jefe_cocina/structure/objects.dart';
import 'package:kioskito_jefe_cocina/structure/table.dart';

class PedidosAprobados extends StatefulWidget {
  const PedidosAprobados({super.key});

  @override
  State<PedidosAprobados> createState() => _PedidosAprobadosState();
}

class _PedidosAprobadosState extends State<PedidosAprobados> {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContenedorTexto(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.1,
                      text: 'Pedidos Aprobados',
                      maxF: 160,
                      minF: 20,
                      maxL: 1,
                      posicionText: Alignment.center,
                      style: temaApp.textTheme.titleMedium,
                    ),
                    BtnIconoDisponibilidad(
                      size: MediaQuery.of(context).size.width * 0.03,
                      onTap: () {
                        Navigator.pushNamed(context, '/dispProductos');
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: TableWidget(
                  columns: const [
                    'Id',
                    'Nombre Usuario',
                    'Más Información',
                    'En Preparación',
                    'Listo'
                  ],
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
                            child: BtnIconoInfo(
                              onTap: () {
                                Navigator.pushNamed(context, '/infoPedidos');
                              },
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            child: BtnIconoEstado(
                              onTap: () {},
                            ),
                          ),
                        ),
                        DataCell(
                          Container(
                            alignment: Alignment.center,
                            child: BtnIconoAprobar(
                              onTap: () {},
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
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      onTap: () {
                        Navigator.pushNamed(context, '/');
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
