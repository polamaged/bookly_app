import 'package:bookly_app/feature/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {

static const KHomeView = '/homeView';
static const KBookDetailsView = '/bookDetailsView';

static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const SplashView(),
    ),
    GoRoute(
      path:KHomeView,
      builder: (context, state) =>const HomeView(),
    ),
    GoRoute(
      path:KBookDetailsView,
      builder: (context, state) =>const BookDetailsView(),
    ),
  ],
);

}