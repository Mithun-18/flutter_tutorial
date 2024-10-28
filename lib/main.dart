import 'package:flutter/material.dart';
import 'package:testflutter/app_bar.dart';
import 'package:testflutter/registration_page.dart';
import 'package:testflutter/temple%20view/my_temple.dart';
import 'package:testflutter/verification_page.dart';
// import 'package:testflutter/my_test_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const Test(initialValue: 0),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Scaffold(
              appBar: MyAppBar(),
              body: Registration(),
            ),
        '/verification': (context) => const Scaffold(
              appBar: MyAppBar(),
              body: VerificationPage(),
            ),
        '/my-temple': (context) => const Scaffold(
              appBar: MyAppBar(),
              body: MyTemple(),
            ),
      },
      title: "flutter demo",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true),
      // home: const Scaffold(
      //   appBar: MyAppBar(),
      //   body: Registration(),
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}
