import 'package:learn_structure_g10/services/extensions_service.dart';
import 'package:learn_structure_g10/services/language_service.dart';
import 'package:learn_structure_g10/services/navigation_service.dart';

import 'menu/main_menu.dart';

class MyApp {
  static Map<String, Menu> initialRoute = {};
  MyApp({
    required Menu home,
    required Map<String, Menu> routes,
    required Language language,
}){
    LanguageService.setLanguage = language;
    Navigator.initialValue = home;
    initialRoute = routes;
    _runApp(home);
  }
  Future<void> _runApp(Menu menu)async{
    while(true){
      await menu.build();
    }
  }

}