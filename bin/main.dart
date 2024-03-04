import 'dart:io';
import 'dart:math';

import 'package:learn_structure_g10/models/send_sms_model.dart';
import 'package:learn_structure_g10/services/network_service.dart';

void main() async{

  print("Qaysi raqamga jonatmoqchisiz?");
  // int number = int.parse(stdin.readLineSync()!);

  print("Text:");

  int random = Random().nextInt(8999)+1000;

  String text = stdin.readLineSync()!;

  String message = "$text => $random";

  SendMassageModel sendMassageModel = SendMassageModel(mobilePhone: "998998138472", message: message, from: "1111");

  String? result = await NetworkService.postData(NetworkService.baseUrl, NetworkService.apiSendSMS, sendMassageModel.toJson());

  print(result);


}



