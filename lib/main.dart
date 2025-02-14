import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme_provider.dart';
import 'theme_data.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme Demo',
      theme: themeState.appTheme == AppTheme.light ? lightTheme : darkTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Riverpod Theme'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            themeNotifier.toggleTheme();
          },
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
