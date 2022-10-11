import 'package:clean_projeto_lista_posts/domain/entities/posts/posts.dart';

class PostsModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  factory PostsModel.fromJson(Map json) {
    return PostsModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  PostsEntity toEntity() => PostsEntity(userId: userId, id: id, title: title, body: body);

  const PostsModel({this.userId, this.id, this.title, this.body});
}
