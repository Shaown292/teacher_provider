import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teacher_provider/providers/splash_screen_provider.dart';
import 'package:teacher_provider/screens/error_screen.dart';
import 'package:teacher_provider/screens/home_screen.dart';
import 'package:teacher_provider/screens/splash_screen.dart';
import 'package:teacher_provider/theme_data.dart';
import 'package:teacher_provider/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));  // Wrap with ProviderScope
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashScreenState = ref.watch(splashScreenProvider);
    final themeState = ref.watch(themeProvider);

    return MaterialApp(
theme: themeState.appTheme == AppTheme.light ? lightTheme : darkTheme,
      home: splashScreenState.when(
        data: (_) {
          // After the splash screen completes, navigate to the HomeScreen
          return const HomeScreen();
        },
        loading: () {
          // Show splash screen while loading
          return const SplashScreen();
        },
        error: (error, stackTrace) {
          // If an error occurs, show an error screen
          return const ErrorScreen();
        },
      ),
    );
  }
}