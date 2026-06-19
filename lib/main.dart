import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/features/home/widgets/home_page.dart';
import 'package:flutter_starter/shared/theme/app_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const ProviderScope(child: App()),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Starter',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: const HomePage(),
      );
}
