import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoflutter/homepage.dart';
import 'package:todoflutter/newspage.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    defaultTransition: Transition.native,
    locale: const Locale('pt', 'BR'),
    getPages: [
      GetPage(name: "/", page: () => const HomePage()),
      GetPage(name: "/news", page: () => const NewsPage())
    ],
  ));
}

// class HomeBinding implements Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => HomeController());
//   }
// }

// class HomeController extends GetxController {
//   var count = 0.obs;
//   void increment() => count++;
// }

// class HomeView extends GetView<Controller> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: const Text("counter"),
//         ),
//         body: Center(
//           child: Obx(() => Text("${controller.counter}")),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: controller.increment,
//         ),
//       );
// }
