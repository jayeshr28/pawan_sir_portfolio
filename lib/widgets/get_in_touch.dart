import 'package:flutter/material.dart';

import '../models/method.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    if (MediaQuery.of(context).size.width < 400) {
      return Container(
        height: 20,
      );
    }
    return Container(
      height: 60.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Colors.lightBlueAccent)),
            padding: const EdgeInsets.all(20.0),
            primary: const Color(0xff000026),
            textStyle: const TextStyle(
              color: Color.fromRGBO(0, 160, 227, 1),
            )),
        onPressed: () {
          method.launchEmail();
        },
        child: const Text("Get in Touch", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
