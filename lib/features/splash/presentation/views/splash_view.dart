import 'package:bookly_app/features/home/presentation/views/home_view.dart';

import '../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SplashViewBody(),
      ),
    );
  }
}

//
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 1),
      () => Get.off(() => HomeView(), transition: Transition.fadeIn),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: 6,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SvgPicture.asset(
                Assets.imagesLogo,
              ),
            ),
          ),
        ),
        SizedBox(width: 0.0, height: 12),
        Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: const Text(
            'Read Free Books',
          ),
        ),
      ],
    );
  }
}
