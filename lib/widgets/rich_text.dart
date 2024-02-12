import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String title;
  final String content;
  const RichTextWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title\t',
        style: const TextStyle(
          fontFamily: 'Avenir',
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: content,
            style: const TextStyle(
              fontFamily: 'Avenir',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class RichTextWidgetForContainer extends StatelessWidget {
  final String title;
  final String content;
  const RichTextWidgetForContainer({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$title\t',
        style: const TextStyle(
          fontFamily: 'Avenir',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: content,
            style: const TextStyle(
              fontFamily: 'Avenir',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class RichTextWidgetForTask extends StatelessWidget {
  final String title;
  final String content;
  const RichTextWidgetForTask({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: const TextStyle(
          fontFamily: 'Avenir',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        children: [
          WidgetSpan(
            child: SizedBox(height: 25), // Adjust the height as needed
          ),
          TextSpan(
            text: content,
            style: const TextStyle(
              fontFamily: 'Avenir',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.start,
    );
  }
}

class RichTextWidgetForCheckOut extends StatelessWidget {
  final String title;
  final String content;
  final String lasttext;
  const RichTextWidgetForCheckOut({
    super.key,
    required this.title,
    required this.content,
    required this.lasttext,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "$title\n",
        style: const TextStyle(
          fontFamily: 'Avenir',
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        children: [
          WidgetSpan(
            child: SizedBox(height: 25), // Adjust the height as needed
          ),
          TextSpan(
            text: "$content\n",
            style: const TextStyle(
              fontFamily: 'Avenir',
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
          WidgetSpan(
            child: SizedBox(height: 25), // Adjust the height as needed
          ),
          TextSpan(
            text: lasttext,
            style: const TextStyle(
              fontFamily: 'Avenir',
              color: Color.fromRGBO(115, 41, 216, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle button tap
                // You can add navigation or any other action here
                Navigator.of(context).pop();
              },
          ),
        ],
      ),
      textAlign: TextAlign.start,
    );
  }
}
