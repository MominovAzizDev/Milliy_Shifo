import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';
import 'package:milliy_shifo/features/products/presentation/pages/splash/welcome_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaqueryMeneger.init(context);
    return Scaffold(body: Center(child: Image.asset("assets/Splash/logo.jpg")));
  }
}
