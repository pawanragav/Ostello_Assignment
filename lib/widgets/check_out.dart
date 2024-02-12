import 'package:flutter/material.dart';
import 'package:ostello_assignment/widgets/rich_text.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color.fromRGBO(229, 229, 229, 1)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(14.0),
            child: RichTextWidgetForCheckOut(
              title: "Double Dhamaka Offer!",
              content:
                  "Accept payment on Google Pay\nfor Business QR to win weekly\ncashbacks!",
              lasttext: "Check Out!",
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          right: -60,
          child: Transform.rotate(
            angle: -0.345398, // Angle in radians (-45 degrees in radians)
            child: Image.asset(
              "assets/images/check_out_image.png",
              width: 200,
            ),
          ),
        )
      ],
    );
  }
}
