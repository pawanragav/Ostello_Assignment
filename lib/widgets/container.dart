import 'package:flutter/material.dart';
import 'package:ostello_assignment/widgets/buttons.dart';
import 'package:ostello_assignment/widgets/check_out.dart';
import 'package:ostello_assignment/widgets/rich_text.dart';
import 'package:ostello_assignment/widgets/tasks.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .1,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(228, 210, 248, 1),
            ),
            child: const RichTextWidgetForContainer(
                title: "₹2500\n", content: "Charges to verify")),
        const SizedBox(
          width: 8,
        ),
        Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .1,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(228, 210, 248, 1),
            ),
            child: const RichTextWidgetForContainer(
                title: "₹1000\n", content: "In Your wallet")),
      ],
    );
  }
}

class TaskContainer extends StatelessWidget {
  const TaskContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color.fromRGBO(229, 229, 229, 1)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center, // Adjust padding as needed
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(0, 213, 102, 1),
                              style: BorderStyle.solid,
                              width: 7), // Border properties
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "😥",
                          style: TextStyle(fontSize: 19),
                        )),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichTextWidgetForTask(
                          title: "100% Profile Completed!\n",
                          content: "5 of 5 tasks complete"),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Use this personalized guide to get your\ncoaching centre up and running!',
                  style: TextStyle(
                    fontFamily: "Avenir",
                  ),
                ),
              ),
              const Tasks(),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const CheckOut(),
      ],
    );
  }
}
