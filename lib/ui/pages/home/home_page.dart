// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean_projeto_lista_posts/domain/entities/posts/posts.dart';
import 'package:clean_projeto_lista_posts/ui/pages/home/home.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import '../../../utils/funcao_tempo.dart';
import '../tempo/stop_watch_time.dart';

class HomePage extends StatelessWidget {
  final HomePresenter presenter;

  const HomePage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OLA'),
          actions: [
            LoadTempo(),
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
