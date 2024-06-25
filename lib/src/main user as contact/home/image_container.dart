import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/Imagecards.png",
              ),
              fit: BoxFit.cover)
          // color: Colors.black,
          ),
      height: size.height * 0.24,
      width: size.width * 0.9,
    );
  }
}
