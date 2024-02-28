import 'dart:io';

import 'package:learn_structure_g10/menu/main_menu.dart';
import 'package:learn_structure_g10/menu/profile_menu.dart';
import 'package:learn_structure_g10/menu/setting_menu.dart';
import 'package:learn_structure_g10/services/extensions_service.dart';
import 'package:learn_structure_g10/services/navigation_service.dart';

class HomeMenu extends Menu{
  static const String id = "/home_menu";

  @override
  Future<void> build() async{
    print("greeting".tr);
    print("setting".tr);
    print("profile".tr);
    print("exit".tr);

    String input = stdin.readLineSync()!;

    await select(input);

  }

  Future<void> select(String input)async{
    switch(input){
      case "1":{
        await Navigator.push(SettingMenu());
        break;
      }
      case "2":{
        await Navigator.push(ProfileMenu());
        break;
      }
      case "3":
        {
          exit(0);
        }
      default:{
        exit(0);
      }
    }
  }

}