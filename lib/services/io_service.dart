import 'dart:io';

class IOService{

  static void write<T>(T str){
    stdout.write(str);
  }

  static String read<T>(){
    return stdin.readLineSync() ?? "";
  }

  ///prints with border
  static void pBorder(Object? value){
    print('\x1b[51m $value \x1b[0m');
  }

  ///prints bold
  static void pBold(Object? value){
    print('\x1B[1m $value \x1B[0m');
  }

  ///prints in red color
  static void pRed(Object? value){
    print('\x1b[31m $value\x1b[0m');
  }

  ///prints in green color
  static void pGreen(Object? value){
    print('\x1b[32m $value\x1b[0m');
  }

  ///prints in blue color
  static void pBlue(Object? value){
    print('\x1b[34m $value\x1b[0m');
  }


}