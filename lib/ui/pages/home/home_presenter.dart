// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:clean_projeto_lista_posts/domain/entities/posts/posts.dart';

abstract class HomePresenter {
  RxBool get isLoading;

  List<PostsEntity>? postsEntity;

  Future<void> getAllPosts();
}
