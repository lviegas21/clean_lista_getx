// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean_projeto_lista_posts/main/factories/pages/home/home_presenter_factory.dart';
import 'package:clean_projeto_lista_posts/ui/pages/home/home_page.dart';
import 'package:clean_projeto_lista_posts/ui/pages/home/home_presenter.dart';

Widget makeHomePage() {
  final presnter = Get.put<HomePresenter>(makeGetxHomePresenter());
  return HomePage(presenter: presnter);
}
