import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/routing/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
