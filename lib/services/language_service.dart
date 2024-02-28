enum Language{en, ru, uz}

class LanguageService{

  static Language _language = Language.ru;

  static Language get getLanguage => _language;

  static set setLanguage(Language language){
    _language = language;
  }

  static void switchLanguage(String language){
    switch(language){
      case "1":{
        LanguageService.setLanguage = Language.uz;
        break;
      }
      case "2":{
        LanguageService.setLanguage = Language.en;
        break;
      }
      case "3":{
        LanguageService.setLanguage = Language.ru;
        break;
      }
      default:{
        LanguageService.setLanguage = Language.en;
        break;
      }
    }
  }

}