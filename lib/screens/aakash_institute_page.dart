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
                          color: const Color.fromRGBO(243, 247, 255, 1),
                        ),
                        child: const ImageIcon(
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
                          backgroundColor:
                              const Color.fromRGBO(115, 41, 216, 1),
                          child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (ctx) {
                                return const AakashInstitutePage();
                              }));
                            },
                            icon: const Icon(
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
                    text: const TextSpan(
                      text: 'Aakash Institute\n\n',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "-----------------",
                          style: TextStyle(
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(238, 225, 252, 1),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color.fromRGBO(211, 172, 255, 1),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Image.asset(
                        'assets/images/icon_1.png',
                        height: 150,
                      ),
                      const Text(
                        "Become a Verified OstelloAI\nInstitute!",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const RichTextWidget(title: "₹3500", content: "/year"),
                      const SizedBox(height: 10),
                      const MyContainer(),
                      const BulletedList(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: SubscribeButton(
                            text: "Subscribe To Ostello Now", ontap: () {}),
                      ),
                    ],
                  ),
                ),
                const TaskContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
