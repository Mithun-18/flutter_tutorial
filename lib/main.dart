import 'package:flutter/material.dart';
import 'package:testflutter/app_bar.dart';
import 'package:testflutter/temple%20view/booking_card.dart';
import 'package:testflutter/temple%20view/my_temple_card.dart';
import 'package:testflutter/verification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  final screens = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
    ),
    Container(color: Colors.amber)
  ];
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(NavigationController());
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(
              appBar: const MyAppBar(),
              body: screens[selectedIndex],
              bottomNavigationBar: NavigationBar(
                elevation: 0,
                selectedIndex: selectedIndex,
                onDestinationSelected: (index) => setState(() {
                  selectedIndex = index;
                }),
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home_filled), label: 'Home'),
                  NavigationDestination(
                      icon: Icon(Icons.home_filled), label: 'Events'),
                  NavigationDestination(
                      icon: Icon(Icons.home_filled), label: 'Community'),
                  NavigationDestination(
                      icon: Icon(Icons.home_filled), label: 'Manage'),
                ],
              ),
            ),
        '/verification': (context) => const Scaffold(
              appBar: MyAppBar(),
              body: VerificationPage(),
            ),
        '/my-temple': (context) => const Scaffold(
              appBar: MyAppBar(),
              body: MyTempleCard(),
            ),
        '/booking': (context) =>
            const Scaffold(appBar: MyAppBar(), body: BookingCard())
      },
      title: "flutter demo",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true),
      // home: const Scaffold(
      //   appBar: MyAppBar(),
      //   body: Registration(),
      // )
      debugShowCheckedModeBanner: false,
    );
  }
}

// class NavigationController extends GetxController {
//   final Rx<int> selectedIndex = 0.obs;
// }
