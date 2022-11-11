import 'package:dikazo/src/utils/constents.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/splash_controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SplashController>().navigate(context);
    return Container(
      decoration:  const BoxDecoration(
        color:  Color.fromARGB(255, 235, 235, 235),
        image: DecorationImage(image: AssetImage(backgroundImage),fit: BoxFit.cover)
      ),
      child: const Center(
        child: Image(
          image: AssetImage(dikazoLogo),
          height: 115,
          width: 215,
        ),
      ),
    );
  }
}
