// ignore_for_file: unused_import

import 'package:clean_projeto_lista_posts/domain/usescases/get_post_usecase.dart';
import 'package:clean_projeto_lista_posts/main/factories/http/http.dart';

import '../../../data/usecases/usecases.dart';

RemoteGetPostsUseCase makeRemoteGetPostsUseCase(String path) =>
    RemoteGetPostsUseCase(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl(path),
    );
