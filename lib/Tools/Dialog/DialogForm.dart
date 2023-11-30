import 'package:flutter/material.dart';
import '../Color/Colors.dart';

class DialogForm {
  static void dialogForm(BuildContext context, double width, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
          actions: <Widget>[ 
            new GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: width,
                height: 40,
                margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: MainColors.blue,
                  borderRadius: BorderRadius.circular(55)
                ),
                child: Text(
                  "닫기",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  )
                ),
              )
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          ),
        );
      },
    );
  }
}