import 'package:flutter/material.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({
    super.key,
    required this.text,
    required this.ontap,
  });
  final String text;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromRGBO(115, 41, 216, 1),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "Avenir",
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
    );
  }
}

class TaskButton extends StatelessWidget {
  const TaskButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.allTasksCompleted,
  });
  final String text;
  final Function() ontap;
  final bool allTasksCompleted;
  @override
  Widget build(BuildContext context) {
    final bgColor = allTasksCompleted
        ? Color.fromRGBO(236, 255, 227, 1)
        : Color.fromRGBO(115, 41, 216, 1);
    final textStyle = allTasksCompleted
        ? const TextStyle(
            color: Color.fromRGBO(16, 185, 129, 1),
            fontFamily: "Avenir",
            fontWeight: FontWeight.bold,
            fontSize: 17,
          )
        : const TextStyle(
            color: Colors.white,
            fontFamily: "Avenir",
            fontWeight: FontWeight.bold,
            fontSize: 17,
          );
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: bgColor,
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
