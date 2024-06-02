import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';

void main() async {
  final container = ProviderContainer();
  final settingsController = container.read(settingsControllerProvider);
  await settingsController.loadSettings();
  runApp(UncontrolledProviderScope(container: container, child: const App()));
}
