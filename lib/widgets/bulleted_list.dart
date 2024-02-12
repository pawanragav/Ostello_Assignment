import 'package:flutter/material.dart';

class BulletedList extends StatelessWidget {
  const BulletedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List contents = [
      "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
      "Lorem Ipsum has been the industry's\nstandard dummy text ever since the 1500s,",
      "when an unknown printer took a galley of\ntype and scrambled it to make a type\nspecimen book.",
      "It has survived not only five centuries, but\nalso the leap into electronic typesetting,\nremaining essentially unchanged."
    ];

    List<Widget> listItems = [];
    for (int i = 0; i < contents.length; i++) {
      listItems.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\u2022',
              style: TextStyle(
                fontSize: 16,
                height: 1.13,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                child: Text(
                  contents[i],
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.55,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: listItems,
      ),
    );
  }
}
