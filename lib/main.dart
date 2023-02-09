import 'package:app_examen_final/screens/screens.dart';
import 'package:flutter/material.dart';
//import 'package:gastosumg1/providers/category_provider.dart';
//import 'package:gastosumg1/screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gastos UMG',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'programacion': (_) => const PrograScreen(),
        'metodos': (_) => const MetodosScreen(),
        'emprendedores': (_) => const EmprendimientoScreen(),
        'electronica': (_) => const ElectronicaScreen(),
        'estadistica': (_) => const EstadisticaScreen(),
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: AppBarTheme(color: Colors.indigo)),
    );
  }
}
