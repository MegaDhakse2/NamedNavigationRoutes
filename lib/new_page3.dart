import 'package:flutter/material.dart';

class NewPage3 extends StatefulWidget {
  const NewPage3({Key? key}) : super(key: key);

  @override
  State<NewPage3> createState() => _NewPage3State();
}

class _NewPage3State extends State<NewPage3> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text('third page'),
        ),
        body: Column(
          children: [


            TextButton(onPressed: () {
              Navigator.maybePop(context);
            }, child: const Text('go back'),
            ),
          ],
        ),

      );
  }
}
