import 'dart:convert';

import 'package:hive/hive.dart';

class DBService{

  static const dbName = "dbName";

  static Box box = Hive.box(dbName);

  static Future<void> storeNote(String token)async{
    await box.put("notes", token);
  }

  static Future<String> loadNotes()async{
    String stringList = box.get("notes");
    return stringList;
  }

  static Future<void> removeNote()async{
    await box.delete("notes");
  }

}