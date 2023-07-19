import 'dart:convert';

import 'package:get/get.dart';

import '../model/data_response.dart';

class Repository{


  static Future<List<FullDataRespose>?> getInformation() async{
    final connect=GetConnect();
    try{
      final response=await connect.get("https://restcountries.com/v3.1/all?fields=name,currencies",).timeout(const Duration(seconds: 60));
      if(response.statusCode==200){
        return fullDataResposeFromJson(response.bodyString!);
      }

    }
    on Exception{
      return null;
    }
    return null;



  }




}