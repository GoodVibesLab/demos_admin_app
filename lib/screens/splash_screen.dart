import 'package:demos_app/gen/assets.gen.dart';
import 'package:demos_app/routes/router.dart';
import 'package:demos_app/utils/extensions.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../providers/user_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ),
    );

    _animationController.addStatusListener((status) async{
      if (status == AnimationStatus.completed) {
        await _animationController.reverse();
        Routes.router.navigateTo(context, "home", replace: true, transition: TransitionType.fadeIn);
      }
    });

    _animationController.forward();

    _getUser();
  }

  void _getUser() {
    Future.delayed(Duration(seconds: 2),(){
      ref.read(authStateProvider.notifier).getUser();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _fadeInAnimation,
              child: Assets.appIcons.foregroundIcon.image(
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: Text(
                "Demos",
                style: context.alternateFont700.copyWith(
                  fontSize: 36,
                  color: Colors.grey,
                )
              ),
            ),
            const SizedBox(height: 20),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: Text(
                "Make your voice heard!",
                style: GoogleFonts.indieFlower(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
