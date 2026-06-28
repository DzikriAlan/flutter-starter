import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/features/home/widgets/home_page.dart';
import 'package:flutter_starter/shared/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Starter',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        home: const HomePage(),
      );
}
