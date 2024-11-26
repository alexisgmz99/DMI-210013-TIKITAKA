import 'package:flutter/material.dart';
import 'package:toktik_210373/config/theme/app_theme.dart';
import 'package:toktik_210373/presentation/provider/discover_provider.dart';
import 'package:toktik_210373/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifier( create: (_) => DiscoverProvider());
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      )
    );
  }
}