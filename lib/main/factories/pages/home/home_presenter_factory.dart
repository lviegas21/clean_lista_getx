import 'package:clean_projeto_lista_posts/main/factories/usecases/get_all_posts_factory.dart';
import 'package:clean_projeto_lista_posts/presentation/getx_home_presenter.dart';
import 'package:clean_projeto_lista_posts/ui/pages/home/home_presenter.dart';

HomePresenter makeGetxHomePresenter() =>
    GetxHomePresenter(getPostsUseCase: makeRemoteGetPostsUseCase('posts'));
