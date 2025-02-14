import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashScreenProvider = FutureProvider<void>((ref) async {
  await Future.delayed(const Duration(seconds: 3));  // Simulate splash screen delay
});
