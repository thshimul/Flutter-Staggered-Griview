import 'dart:async';
import 'package:get/get.dart';
import 'package:interview_task/repository/repository.dart';

import '../model/data_response.dart';



class TaskController extends GetxController {

  final data = <FullDataRespose>[].obs;
  final isLoading = false.obs;
  var selectedLanguageDropdown = 'English'.obs;
  List selectedLanguageDropdownList = ['English', 'عربي',];


  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 1), () {
      getData();
    });


  }
  var dataList=[].obs;
  void getData() async {
    try {
      await Repository.getInformation().then((value) {
        if (value != null) {
          data.value = value!;

          }
        for(int i=0;i<data.length;i++)
        {

          if(data[i].currencies!.keys!.length==1)

          {
            String s=data[i].currencies![data[i].currencies!.keys.reduce((value, element) => "()")]!.name!.toString();
          List l = s.split(' ');
          if(l.length==2){
            dataList.add(data[i].name!.common!.toString());
          }

          }

        }
           isLoading.value = true;
        });

    }
    catch (err) {
      // ignore: avoid_print
    } finally {

    }
  }

}
