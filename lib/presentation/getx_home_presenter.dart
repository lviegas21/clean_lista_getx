// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'package:get/get.dart';
import 'package:clean_projeto_lista_posts/domain/entities/posts/posts_entity.dart';
import 'package:clean_projeto_lista_posts/domain/usescases/usecases.dart';
import 'package:clean_projeto_lista_posts/ui/pages/home/home.dart';

class GetxHomePresenter extends GetxController implements HomePresenter {
  final GetPostsUseCase getPostsUseCase;

  GetxHomePresenter({required this.getPostsUseCase});

  @override
  List<PostsEntity>? postsEntity;

  @override
  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    await getAllPosts();
    super.onInit();
  }

  @override
  Future<void> getAllPosts() async {
    try {
      isLoading.value = true;
      postsEntity = await getPostsUseCase.getAllPost();
      isLoading.value = false;
    } catch (e) {
      print(e);
    }
  }
}
