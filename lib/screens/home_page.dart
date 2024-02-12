import 'package:flutter/material.dart';
import 'package:ostello_assignment/screens/aakash_institute_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
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
            ],
          ),
          SizedBox(height: 7),
          Text(
            "Add Institute Cover",
            style: TextStyle(fontFamily: "Avenir", fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 7),
          Text(
            "Browse your Gallery or take a Picture\nfrom the phone Camera to upload",
            style: TextStyle(
              fontFamily: "Avenir",
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(132, 132, 133, 1),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
