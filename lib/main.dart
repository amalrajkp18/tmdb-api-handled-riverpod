import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/routes/page_routes.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/services/shared_preference/preference.dart';
import 'package:movie_app/view/pages/splash/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preference.create();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(ref),
      routes: pageRoutes,
      initialRoute: SplashPage.routeName,
    );
  }
}
