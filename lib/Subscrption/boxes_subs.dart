import 'package:flutter/material.dart';

class BoxesSubs extends StatefulWidget {
  const BoxesSubs({Key? key}) : super(key: key);

  @override
  _BoxesSubsState createState() => _BoxesSubsState();
}

class _BoxesSubsState extends State<BoxesSubs> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children:  [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: size.height * 0.1,
                width: size.width * 0.15,
                decoration:const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/man.jpg'))),
              ),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text(
                  'Thomas Gold',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                Text('December 16th, 2022',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ],
            ),
          ],
        ),
      const  Text(
          '\$5.99',
          style: TextStyle(
              color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
