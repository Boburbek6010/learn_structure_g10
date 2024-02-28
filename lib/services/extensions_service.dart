import '../data/language/en.dart';
import '../data/language/ru.dart';
import '../data/language/uz.dart';
import 'language_service.dart';

extension TranslateString on String{
  String get tr{
    switch(LanguageService.getLanguage){
      case Language.uz:{
        return uz[this] ?? this;
      }
      case Language.en:{
        return en[this] ?? this;
      }
      case Language.ru:{
        return ru[this] ?? this;
      }
    }
  }
}