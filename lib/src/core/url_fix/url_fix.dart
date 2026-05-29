import '/src/constants/url_fix/constants.dart';

/// لینکێک دابنێ گەر کێشەی هەبوو خۆی تۆماتیکی %20ی بۆ دادەنێت
String chakkrdny_link(String url) {
  // دڵننیا دەبینەوە گەر ئەوەی داتناوە لینکە یاخوود نا
  var isURL = RegExp(urlRegExp).hasMatch(url);
  url = Uri.decodeFull(url);
  url = isURL ? url.replaceAll(RegExp(whiteSpaceRegExp), '%20') : url;
  return url;
}
