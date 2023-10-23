import 'package:flutter/material.dart';
import 'package:clean_app/color_scheme.dart';
import 'package:clean_app/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      home: const MyHomePage(),
      routes: {
        '/MainPage': (context) => const mainPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Column(
        children: [
          Container(
            width: 100,
            height: 50,
            margin: const EdgeInsets.only(top: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/logo.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Clean Home\n Clean Life",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Book Cleans At The Comfort\n Of Your Home",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/image/splash.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: openMainPage,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    "Continue...",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: purple),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/MainPage');
  }
}
