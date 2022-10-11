import '../entities/posts/posts.dart';

abstract class GetPostsUseCase {
  Future<List<PostsEntity>?> getAllPost();
}
