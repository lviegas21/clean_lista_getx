// ignore_for_file: depend_on_referenced_packages

import 'package:clean_projeto_lista_posts/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean_projeto_lista_posts/main/factories/pages/home/home_page_factory.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Teste',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/home',
          page: makeHomePage,
          transition: Transition.fade,
        ),
        GetPage(
            name: '/',
            page: (() => const SplashPage()),
            transition: Transition.fadeIn),
      ],
    );
  }
}
