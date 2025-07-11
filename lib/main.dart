import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_route.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/library/data/Models/saved_book_model/saved_book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo/home_repo_impl.dart';
import 'package:bookly_app/feature/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manger/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(SavedBookModelAdapter());
  await Hive.openBox<SavedBookModel>(kLibraryBox);
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
          ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
          ..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
