import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackGroundImage extends StatefulWidget {
  const BackGroundImage({super.key});

  @override
  State<BackGroundImage> createState() => _BackGroundImageState();
}

class _BackGroundImageState extends State<BackGroundImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/shadow_image.jpg"),
              fit: BoxFit.cover)),
    );
  }
}
