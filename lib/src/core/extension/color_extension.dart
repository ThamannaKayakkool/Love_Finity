import 'dart:ui';

class HexColor{
  static  Color fromHex(String hexString){
    final buffer =StringBuffer();
    if(hexString.length <= 7) buffer.write('FF');
    buffer.write(hexString.replaceFirst('#', ''));
    return  Color(int.parse(buffer.toString(),radix: 16));
  }
}