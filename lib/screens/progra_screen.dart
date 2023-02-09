import 'package:flutter/material.dart';
import 'package:app_examen_final/widgets/widgets.dart';

class PrograScreen extends StatelessWidget {
  const PrograScreen({Key? key}) : super(key: key);

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
              'PROGRAMACIÓN III',
              style: TextStyle(fontSize: 14),
            ),
          ),
          background: const FadeInImage(
            placeholder: AssetImage('assets/prueba.gif'),
            image: AssetImage('assets/prograPortada.jpg'),
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
              'Programación III',
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
                    'data:image/jpeg;base64,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'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Durante el curso de Programación III vimos el tema de un CardSwiper el cual consiste en un carousel de imagenes que mediente el consumo de un API, podemos agregar poster o imagenes para ver dentro del carousel, para implementar este CardSwiper necesitamos de una libreria la cual es: carousel_slider: ^4.1.1, además del CardSwiper, también vimos el CustomAppBar el cual consiste en un App Bar más grande del que tenemos por defecto, nos permite implementar una imagen en el App Bar y también nos brinda una animación la cual consiste en que cuando damos scroll, el App Bar va disminuyendo su tamaño.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            )
          ],
        ),
      ),
    );
  }
}
