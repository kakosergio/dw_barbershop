import 'package:asyncstate/asyncstate.dart';
import 'package:dw_barbershop/src/core/ui/widgets/barbershop_loader.dart';
import 'package:dw_barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      builder: (asyncStateObserver) {
        return MaterialApp(
          title: 'DW Barbershop',
          navigatorObservers: [asyncStateObserver],
          routes: {
            '/': (_) => const SplashPage(),
          },
        );
      },
      customLoader: const BarbershopLoader(),
    );
  }
}
