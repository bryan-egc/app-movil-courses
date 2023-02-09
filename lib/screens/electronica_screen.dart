import 'package:flutter/material.dart';
import 'package:app_examen_final/widgets/widgets.dart';

class ElectronicaScreen extends StatelessWidget {
  const ElectronicaScreen({Key? key}) : super(key: key);

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
              'ELECTRONICA ANALOGICA',
              style: TextStyle(fontSize: 14),
            ),
          ),
          background: const FadeInImage(
            placeholder: AssetImage('assets/prueba.gif'),
            image: AssetImage('assets/elecPortada.jpg'),
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
              'Electronica Analogica',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TarjetaImage(
                imageURL:
                    'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZWxlY3Ryb25pY3xlbnwwfHwwfHw%3D&w=1000&q=80'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Existen diferentes componentes electronicos que por si solos realizan diferentes accionamientos, pero en conjunto realizan grandes funcionalidades, con los circuitos RC podemos realizar desde un administrador de frecuencias hasta un controlador de humedad y si a un circuito RC le implementamos un integrado 555 podemos crear una sirena de policia hasta un control de velocidades para un motor, para ejemplificar estos circuitos podemos utilizar TinkerCad para estar lo más cercano a la realidad o Proteus para obtener un modelo esquematico.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
