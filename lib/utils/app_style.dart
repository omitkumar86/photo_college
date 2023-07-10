import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

myStyleInter(double fs, Color clr, [FontWeight ?fw]){
  return GoogleFonts.inter(fontSize: fs, color: clr, fontWeight: fw);
}

/// For JejuGothic Font

// myStyleJejuGothic(double fs, Color clr, [FontWeight ?fw]){
//   return GoogleFonts.je(fontSize: fs, color: clr, fontWeight: fw);
// }


/// For Abel Font

myStyleAbel(double fs, Color clr, [FontWeight ?fw]){
  return GoogleFonts.abel(fontSize: fs, color: clr, fontWeight: fw);
}