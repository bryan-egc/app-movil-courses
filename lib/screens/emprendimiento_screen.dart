import 'package:flutter/material.dart';
import 'package:app_examen_final/widgets/widgets.dart';

class EmprendimientoScreen extends StatelessWidget {
  const EmprendimientoScreen({Key? key}) : super(key: key);

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
              'EMPRENDEDORES DE NEGOCIOS',
              style: TextStyle(fontSize: 14),
            ),
          ),
          background: const FadeInImage(
            placeholder: AssetImage('assets/prueba.gif'),
            image: AssetImage('assets/emprePortada.jpg'),
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
              'Emprendedores de Negocios',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            TarjetaImage(
                imageURL:
                    'https://i0.wp.com/serranojaimeconsultores.com/wp-content/uploads/2019/10/emprendesoci.jpg?fit=1600%2C900&ssl=1'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Todos los temas vistos en emprendedores de negocios han sido muy interesantes, sobre todo el tema de mercadotecnia, en este tema abarcamos todo los relacionado con la publicidad y el alcance de un negocio o producto, utilizando el Mercado de Consumo, leyes de marketing, aspectos promocionales, además vimos como crear de manera correcta el nombre, marca, slogan y logotipo de un negocio.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
