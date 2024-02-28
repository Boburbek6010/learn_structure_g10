import 'dart:io';

import 'package:learn_structure_g10/menu/main_menu.dart';

class SettingMenu extends Menu{

  static const String id = "/setting_menu";

  @override
  Future<void> build() async{
    print("1. EN");
    print("2. RU");
    print("3. UZ");

    String input = stdin.readLineSync()!;
  }
}