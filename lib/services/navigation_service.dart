import '../menu/main_menu.dart';

class Navigator{

  static Menu? initMenu;

  static Future<void>push(Menu menu)async{
    initMenu = menu;
    await initMenu?.build();
  }


}