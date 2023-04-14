import 'package:flutter/material.dart';

import 'package:exercise_1/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (_) => const HomeScreen(),
        'details_screen': (_) => DetailsScreen(),
      },
    );
  }
}