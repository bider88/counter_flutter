// 3. Debe de extender de StatalessWidget para acceder al método de build
import 'package:flutter/material.dart';

import 'package:counter_flutter/src/pages/counter_page.dart';
// import 'package:counter_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  // 4. Sobre escribimos el método para inicializar la app. Debe de retornar un widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: CounterPage(),
      ),
    );
  }
}
