import 'package:flutter/material.dart';
import 'package:ostello_assignment/widgets/bulleted_list.dart';
import 'package:ostello_assignment/widgets/container.dart';
import 'package:ostello_assignment/widgets/rich_text.dart';
import 'package:ostello_assignment/widgets/buttons.dart';

class AakashInstitutePage extends StatelessWidget {
  const AakashInstitutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(243, 247, 255, 1),
                        ),
                        child: ImageIcon(
                          AssetImage(
                            "assets/images/shop.png",
                          ),
                          color: Color.fromRGBO(34, 85, 147, 1),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(115, 41, 216, 1),
                          child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return AakashInstitutePage();
                              }));
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'Aakash Institute\n\n',
                      style: const TextStyle(
                        fontFamily: 'Avenir',
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "-----------------",
                          style: const TextStyle(
                            fontFamily: 'Avenir',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(238, 225, 252, 1),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color.fromRGBO(211, 172, 255, 1),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Image.asset(
                        'assets/images/icon_1.png',
                        height: 150,
                      ),
                      Text(
                        "Become a Verified OstelloAI\nInstitute!",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      RichTextWidget(title: "₹3500", content: "/year"),
                      SizedBox(height: 10),
                      MyContainer(),
                      BulletedList(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: SubscribeButton(
                            text: "Subscribe To Ostello Now", ontap: () {}),
                      ),
                    ],
                  ),
                ),
                TaskContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
