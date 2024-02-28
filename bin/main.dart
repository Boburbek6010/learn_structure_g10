import 'dart:io';

import 'package:learn_structure_g10/data/language_list.dart';
import 'package:translator/translator.dart';

void main()async{

  final translator = GoogleTranslator();

  print("Enter the value");
  String userInput = stdin.readLineSync()!;
  var result = await translator.translate(userInput, from: "uz", to: "ar");
  bool isTrue = LanguageList.lang.containsKey("ar");
  print(isTrue);
  print(result);
}