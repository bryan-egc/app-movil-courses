import 'package:flutter/material.dart';
import 'package:app_examen_final/widgets/widgets.dart';

class EstadisticaScreen extends StatelessWidget {
  const EstadisticaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const _Overview(),
          ]))
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Colors.indigo,
        expandedHeight: 200,
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          titlePadding: const EdgeInsets.all(0),
          title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            color: Colors.black12,
            child: const Text(
              'ESTADISTICA II',
              style: TextStyle(fontSize: 14),
            ),
          ),
          background: const FadeInImage(
            placeholder: AssetImage('assets/prueba.gif'),
            image: AssetImage('assets/estadiPortada.jpg'),
            fit: BoxFit.cover,
          ),
        ));
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          children: const [
            Text(
              'Estadistica II',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TarjetaImage(
                imageURL:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ6rGPSnhRrafFiwgnnGd-GDPX8Y1QdrtPdQ&usqp=CAU'),
            SizedBox(
              height: 30,
            ),
            Text(
              'El cuadro latino es una herramienta estadística que se usa cuando se tienen tres factores a evaluar en una misma unidad experimental. Lo importante del diseño es que con pocas unidades experimentales se pueden probar varios factores, a los niveles del primer factor se le llamarán tratamientos, los niveles del segundo factor se llamarán hileras, y los niveles del tercer factor se llamarán columnas.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
