// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean_projeto_lista_posts/domain/entities/posts/posts.dart';
import 'package:clean_projeto_lista_posts/ui/pages/home/home.dart';

class HomePage extends StatelessWidget {
  final HomePresenter presenter;

  const HomePage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OLA'),
          actions: [
            IconButton(
                onPressed: () => presenter.getAllPosts(),
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: Obx(
          () => Center(
            child: presenter.isLoading.value
                ? const CircularProgressIndicator()
                : ListView.builder(
                    itemCount: presenter.postsEntity?.length,
                    itemBuilder: (context, index) {
                      PostsEntity post = presenter.postsEntity![index];
                      return ListTile(
                        title: Text(post.title ?? "N/I"),
                        subtitle: Text(post.body ?? "N/I"),
                      );
                    }),
          ),
        ));
  }
}
