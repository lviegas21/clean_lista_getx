import 'package:clean_projeto_lista_posts/data/http/http.dart';
import 'package:clean_projeto_lista_posts/data/models/posts/posts_model.dart';
import 'package:clean_projeto_lista_posts/domain/entities/posts/posts_entity.dart';
import 'package:clean_projeto_lista_posts/domain/usescases/usecases.dart';

import '../../domain/helpers/helpers.dart';

class RemoteGetPostsUseCase implements GetPostsUseCase {
  final HttpClient httpClient;
  final String url;

  RemoteGetPostsUseCase({required this.httpClient, required this.url});

  @override
  Future<List<PostsEntity>?> getAllPost() async {
    try {
      final response = await httpClient.request(url: url, method: 'get');
      return response
          .map<PostsEntity>((json) => PostsModel.fromJson(json).toEntity())
          .toList();
    } on HttpError catch (error) {
      throw error == HttpError.forbidden
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
