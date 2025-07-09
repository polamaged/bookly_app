import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:bookly_app/feature/home/presentation/manger/search_books/search_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manger/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/search/data/repos/search_repo/search_repo_impl.dart';
import 'package:bookly_app/feature/search/presenatation/views/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';
  static const KSearchView = '/searchview';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),

      GoRoute(path: KHomeView, builder: (context, state) => const HomeView()),


      GoRoute(
        path: KBookDetailsView,
        builder:
            (context, state) => BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel: state.extra as BookModel),
            ),
      ),

      GoRoute(
        path: KSearchView,
        builder:
            (context, state) => BlocProvider(
              create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
              child: SearchView(),
            ),
      ),
    ],
  );
}
