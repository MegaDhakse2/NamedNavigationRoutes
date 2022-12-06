import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return
   Scaffold(
        appBar: AppBar(
          title: const Text('second page'),
        ),
        body: Column(
          children: [

            TextButton(onPressed: () {
                Navigator.pushNamed(context, '/page2');
                 }, child: const Text('go page 2'),
                ),
            TextButton(onPressed: () {
              Navigator.maybePop(context);
            }, child: const Text('go back'),
            ),
          ],
        ),

    );
  }
}
