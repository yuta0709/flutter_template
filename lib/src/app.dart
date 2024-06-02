import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/settings/settings_controller.dart';
import '/src/views/home.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsController = ref.watch(settingsControllerProvider);
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: settingsController.themeMode,
    );
  }
}
