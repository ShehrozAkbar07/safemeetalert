import 'package:flutter/material.dart';

class BoxesEmercon extends StatefulWidget {
  const BoxesEmercon({Key? key}) : super(key: key);

  @override
  _BoxesEmerconState createState() => _BoxesEmerconState();
}

class _BoxesEmerconState extends State<BoxesEmercon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: size.height * 0.1,
                width: size.width * 0.1,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/man.jpg'))),
              ),
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Thomas Gold',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.call_outlined,
          color: Colors.white,
        )
      ],
    );
  }
}
