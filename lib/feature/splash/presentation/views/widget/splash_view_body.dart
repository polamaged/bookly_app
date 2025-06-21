import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/feature/splash/presentation/views/widget/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;
@override
  void initState() {
    animationController = AnimationController(vsync: this , duration: const Duration(seconds: 1));

    slidingAnimation = Tween<Offset>(begin: const Offset(0 , 6) , end:Offset.zero ).animate(animationController);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
       Image.asset(AssetsData.logo),
        const SizedBox(height: 4,),
       SlidingText(slidingAnimation: slidingAnimation),

      ],
    );
  }
}


