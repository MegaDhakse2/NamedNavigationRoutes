import 'package:flutter/material.dart';

class NewPage2 extends StatefulWidget {
  const NewPage2({Key? key}) : super(key: key);

  @override
  State<NewPage2> createState() => _NewPage2State();
}

class _NewPage2State extends State<NewPage2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second page'),
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, '/main');
            }, child: const Text('go to main page')),

            ElevatedButton(onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/page3', (Route<dynamic> route) => false);
            }, child: const Text('go to final page')),
            TextButton(onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/main'),);
            },
                child: const Text('Go back pop until')),
          ],
        ),
      ),
    );
  }
}
