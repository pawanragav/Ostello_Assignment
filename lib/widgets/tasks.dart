import 'package:flutter/material.dart';
import 'package:ostello_assignment/widgets/buttons.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  late List<bool> completedList;

  @override
  void initState() {
    super.initState();
    completedList = List.filled(contents.length, false);
  }

  final List<String> contents = [
    "Add your first course details",
    "Customize your institute details",
    "Upload your first video",
    "Add popular hashtags.",
    "Become Ostello Verified",
  ];

  bool allTasksCompleted() {
    return completedList.every((completed) => completed);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listItems = [];
    for (int i = 0; i < contents.length; i++) {
      listItems.add(
        Column(
          children: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Step ${i + 1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content:
                          const Text("Are you sure you completed this step?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              completedList[i] = false;
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'No',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              completedList[i] = true;
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: const Color.fromRGBO(115, 41, 216, 1),
                    child: Icon(
                        completedList.isNotEmpty && completedList[i]
                            ? Icons.check
                            : Icons.close,
                        color: Colors.white),
                  ), // Shows check icon if task is completed
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        contents[i],
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: const TextStyle(
                            fontSize: 16,
                            height: 1.55,
                            fontFamily: "Avenir",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              endIndent: 10,
              indent: 10,
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...listItems,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TaskButton(
              text:
                  allTasksCompleted() ? "You're all set" : "Not Yet Completed",
              ontap: () {},
              allTasksCompleted: allTasksCompleted(),
            ),
          ),
        ],
      ),
    );
  }
}
