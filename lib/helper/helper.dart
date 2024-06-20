

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:leadkart/ApiServices/userAPii.dart';
import 'package:leadkart/controllers/imageEditorController.dart';
import 'package:leadkart/helper/TextStyles.dart';
import 'package:leadkart/them/constents.dart';

class MyHelper
{
  static AppConstent appConstent = AppConstent();
  static TextStyles textStyls = TextStyles();
  static UserApi userApi = UserApi();
  static Dio dio = Dio(
    BaseOptions(baseUrl: "https://server.leadkart.dsmacademy.in/api/"),
  );

}