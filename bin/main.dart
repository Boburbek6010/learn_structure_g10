import 'dart:io';

import 'package:learn_structure_g10/models/gemini_model.dart' hide Content, Part;
import 'package:learn_structure_g10/models/input_gemini_model.dart';
import 'package:learn_structure_g10/services/network_service.dart';

void main()async{

  String input = stdin.readLineSync()!;

  InputGeminiModel inputGeminiModel = InputGeminiModel(
    contents: [
      Content(
        parts: [
          Part(text: input)
        ]
      )
    ]
  );

  String? result = await NetworkService.postData(NetworkService.baseUrl, NetworkService.apiGetGeminiText, inputGeminiModel.toJson(), NetworkService.paramGeminiText());
  if(result !=null){
   GeminiModel geminiModel = geminiModelFromJson(result);
   print(geminiModel.candidates[0].content.parts[0].text);
  }

}