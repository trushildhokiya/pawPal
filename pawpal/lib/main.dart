import 'package:flutter/material.dart';
import 'package:pawpal/router/router.dart';

void main() => runApp(PawPal());
MyRouter router = MyRouter();


class PawPal extends StatelessWidget {
  const PawPal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.getRouter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
