import 'package:flutter/material.dart';
import './new_page.dart';
import './new_page2.dart';
import './new_page3.dart';


void main(){
  runApp(   MaterialApp(
    title: 'home page',
    initialRoute: '/main',
    routes: <String, WidgetBuilder> {
            '/main': (BuildContext context) => const Home(),
      '/page1' : (BuildContext context) => const NewPage(),
      '/page2' : (BuildContext context) => const NewPage2(),
      '/page3' : (BuildContext context) => const NewPage3(),
    },
  ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('home page'),),
        body:Column(children: [
          ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/page1');
              },
              child: const Text('first Page'),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/page2');
              },
              child: const Text('Second Page'),),
          TextButton(onPressed: () {
            Navigator.maybePop(context);
          },
            child: const Text('go back'),
          ),
        ],
        ),

    );
  }
}
