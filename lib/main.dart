import 'package:flutter/material.dart';
import 'package:life_note/constants/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getDarkThemeData(),
      home: const MyHomePage(
        title: 'Flutter Demo Home',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.search),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(r'assets/images/note_image.png'),
                )),
              ),
              Text(
                'Daily Notes',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Take notes, reminders, set targets, collect resources, and secure privacy',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              // SizedBox(
              //   width: 90,
              //   child: FittedBox(
              //     child: FloatingActionButton(
              //       onPressed: () {},
              //       child: const Icon(
              //         Icons.note_add_outlined,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
