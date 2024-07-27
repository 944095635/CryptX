import 'package:animate_do/animate_do.dart';
import 'package:crypt_x/page/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled/padding_extension.dart';
import 'package:flutter_styled/size_extension.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _animate = false;

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("images/bg1.png"), context);
    precacheImage(const AssetImage("images/psc.jpg"), context);
    precacheImage(const AssetImage("images/card.png"), context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 36,
          bottom: 36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            20.horizontalPadding(
              child: FadeOutLeft(
                animate: _animate,
                curve: Curves.ease,
                from: 20,
                delay: const Duration(milliseconds: 300),
                child: FadeInRight(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: "Crypt",
                        ),
                        TextSpan(
                          text: "X",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      ],
                    ),
                    style: const TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FadeOutLeft(
                curve: Curves.ease,
                animate: _animate,
                delay: const Duration(milliseconds: 200),
                child: FadeInRight(
                  delay: const Duration(milliseconds: 300),
                  child: Image.asset("images/bg.png"),
                ),
              ),
            ),
            20.horizontalPadding(
              child: FadeOutLeft(
                animate: _animate,
                curve: Curves.ease,
                delay: const Duration(milliseconds: 100),
                child: FadeInRight(
                  delay: const Duration(milliseconds: 500),
                  child: const Text(
                    "Jump start your\r\ncrypto portfolio",
                    style: TextStyle(
                      fontSize: 32,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            24.verticalSpace,
            24.horizontalPadding(
              child: FadeOutLeft(
                animate: _animate,
                curve: Curves.ease,
                child: FadeInRight(
                  delay: const Duration(milliseconds: 600),
                  child: const Text(
                    "Take your investment portfolio\r\nto next level",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.8,
                    ),
                  ),
                ),
              ),
            ),
            44.verticalSpace,
            FadeOutDown(
              animate: _animate,
              child: FadeInUp(
                delay: const Duration(milliseconds: 1200),
                child: FilledButton(
                  onPressed: () async {
                    setState(() {
                      _animate = true;
                    });
                    await Future.delayed(const Duration(milliseconds: 1000));
                    toHome();
                    // setState(() {
                    //   _animate = false;
                    // });
                  },
                  child: const Text("Get Started"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void toHome() {
    Get.off(() => const HomePage(), transition: Transition.fade);
  }
}
