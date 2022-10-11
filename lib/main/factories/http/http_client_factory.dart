// ignore_for_file: depend_on_referenced_packages

import 'package:http/http.dart';
import 'package:clean_projeto_lista_posts/data/http/http.dart';
import 'package:clean_projeto_lista_posts/infra/http/http.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
