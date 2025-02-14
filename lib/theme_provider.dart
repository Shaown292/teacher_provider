import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppTheme { light, dark }

class ThemeState {
  final AppTheme appTheme;

  ThemeState({required this.appTheme});
}

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier() : super(ThemeState(appTheme: AppTheme.light));

  void toggleTheme() {
    state = ThemeState(
      appTheme:
          state.appTheme == AppTheme.light ? AppTheme.dark : AppTheme.light,
    );
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeState>((ref) {
  return ThemeNotifier();
});
