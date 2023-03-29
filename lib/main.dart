import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';
import 'config/themes/app_themes.dart';
import 'domain/repositories/api_repository.dart';
import 'domain/repositories/database_repository.dart';
import 'locator.dart';
import 'presentation/cubits/local_articles/local_articles_cubit.dart';
import 'presentation/cubits/remote_articles/remote_articles_cubit.dart';
import 'presentation/views/breaking_news_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocalArticlesCubit(
            locator.get<DatabaseRepository>(),
          )..getAllSavedArticles(),
        ),
        BlocProvider(
          create: (context) => RemoteArticlesCubit(
            locator.get<ApiRepository>(),
          )..getBreakingNewsArticles(),
        ),
      ],
      child: OKToast(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          home: BreakingNewsView(),
        ),
      ),
    );
  }
}
