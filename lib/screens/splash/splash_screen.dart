import 'package:dio_project/service/network_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../list_coins/list_coins_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ListCoinsScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GetIt.I<NetworkService>().initDio();
    return const Scaffold(
      body: Center(child: Text('Welcome to Coins World')),
    );
  }
}
