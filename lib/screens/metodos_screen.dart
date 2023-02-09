import 'package:flutter/material.dart';
import 'package:app_examen_final/widgets/widgets.dart';

class MetodosScreen extends StatelessWidget {
  const MetodosScreen({Key? key}) : super(key: key);

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
              'MÉTODOS NUMÉRICOS',
              style: TextStyle(fontSize: 14),
            ),
          ),
          background: const FadeInImage(
            placeholder: AssetImage('assets/prueba.gif'),
            image: AssetImage('assets/metodosPortada.jpg'),
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
              'Métodos Numéricos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            TarjetaImage(
                imageURL:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq2QNhYLri9vq25UDQf0FdJ7oUkiuYKmJXfw&usqp=CAU'),
            SizedBox(
              height: 30,
            ),
            Text(
              'En métodos numéricos aprendimos sobre distintos métodos para obtener las raices reales de un polinomio, uno de los que me parecío más interesante fue el método de Newton - Raphson, ya que con este método podemos obtener valores mucho más exactos y con un error de aproximación más pequeño, para utilizar este método necesitamos un valor inicial y la primera derivada del polinomio que nos plantean, luego sustituimos los valores dentro de la siguiente formula: f´(xi)=f(xi)-0/xi-xi+1.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            )
          ],
        ),
      ),
    );
  }
}
