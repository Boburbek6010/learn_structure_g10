import 'dart:io';

import 'package:learn_structure_g10/data/language_list.dart';
import 'package:translator/translator.dart';

void main()async{
  DateTime dateTime1 = DateTime.now();
  DateTime dateTime2 = DateTime.now();
  Set set = {};
  set.add(dateTime1);
  set.add(dateTime2);
  print(set);
}