import 'package:get/get.dart';
import 'package:interview_task/view/home.dart';
import 'package:interview_task/view/task_one.dart';
import 'package:interview_task/view/task_two.dart';

class RouteManager {
  static const String home = '/home';
  static const String taskOne = '/taskOne';
  static const String taskTwo = '/taskTwo';

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () =>  const Home(),

    ),
    GetPage(
      name: taskOne,
      page: () =>  TaskOne(),
    ),
    GetPage(
      name: taskTwo,
      page: () =>  TaskTwo(),
    ),
  ];
}
