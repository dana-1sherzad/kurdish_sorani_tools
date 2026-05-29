enum StrType { NumWord, StrWord }

class DigitToWord {
  static String toWord(String? number, StrType type,
      {String separator = ',',
      bool isMoney = false,
      String biggerThanCapacity =
          "دەبێت درێژی ژمارەکە لە 16 ژمارە کەمتر بێت"}) {
    String words = "";
    String result = "";

    if (number == null || number == "") {
      return '';
    }
    if (number.length >= 15) {
      return biggerThanCapacity;
    }

    ///remove separator ','  symbol of text
    String numInt = number.replaceAll(separator, '');

    switch (type) {
      case StrType.NumWord:
        words = _NumWord.toWord(numInt, isMoney);
        break;
      case StrType.StrWord:
        words = _StrWord.toWord(numInt, isMoney);
        break;
    }

    result = words.replaceAll("^\\s+", "").replaceAll("\\b\\s{2,}\\b", " ");

    return result.trim();
  }
}

class _NumWord {
  static String toWord(String inputNumber, bool isMoney) {
    try {
      int number = int.parse(inputNumber);
      if (number == 0) {
        return "سفر";
      }
      String fullNumber = inputNumber;
      for (var i = 0; i < 15 - fullNumber.length; i++) {
        inputNumber = "0$inputNumber";
      }
      fullNumber = inputNumber;

      int trillion = int.parse(fullNumber.substring(0, 3));
      int billions = int.parse(fullNumber.substring(3, 6));
      int millions = int.parse(fullNumber.substring(6, 9));
      int hundredThousands = int.parse(fullNumber.substring(9, 12));
      int thousands = int.parse(fullNumber.substring(12, 15));

      String checkTrillion;

      switch (trillion) {
        case 0:
          checkTrillion = "";
          break;
        default:
          checkTrillion = "$trillion" " ترلیۆن و";
      }
      String result = checkTrillion;

      String checkBillions;

      switch (billions) {
        case 0:
          checkBillions = "";
          break;
        default:
          checkBillions = "$billions" " ملیارد و";
      }
      result += checkBillions;

      String checkMillions;

      switch (millions) {
        case 0:
          checkMillions = "";
          break;
        default:
          checkMillions = "$millions" " ملیۆن و";
      }
      result = result + checkMillions;

      String checkHundredThousands;
      switch (hundredThousands) {
        case 0:
          checkHundredThousands = "";
          break;
        default:
          checkHundredThousands = "$hundredThousands" " هەزار و";
      }
      result = result + checkHundredThousands;

      if (thousands == 0 && result.endsWith(" و")) {
        result = result.substring(0, result.length - 2);
      }
      String checkThousand;
      switch (thousands) {
        case 0:
          checkThousand = "";
          break;
        default:
          checkThousand = "$thousands";
      }

      result = "$result$checkThousand";

      return isMoney ? "$result دیناری عراقی" : result;
    } on FormatException catch (e) {
      print(e.toString());
      return "هەڵبژاردنی جۆریەتی هەڵەیە";
    }
  }
}

class _StrWord {
  static String toWord(String inputNumber, bool isMoney) {
    try {
      int number = int.parse(inputNumber);
      if (number == 0) {
        return "سفر";
      }
      String fullNumber = inputNumber;
      for (var i = 0; i < 15 - fullNumber.length; i++) {
        inputNumber = "0$inputNumber";
      }
      fullNumber = inputNumber;

      int trillion = int.parse(fullNumber.substring(0, 3));
      int billions = int.parse(fullNumber.substring(3, 6));
      int millions = int.parse(fullNumber.substring(6, 9));
      int hundredThousands = int.parse(fullNumber.substring(9, 12));
      int thousands = int.parse(fullNumber.substring(12, 15));

      String checkTrillion;

      switch (trillion) {
        case 0:
          checkTrillion = "";
          break;
        case 1:
          checkTrillion = "${_convertNum(trillion)} ترلیۆن ";
          break;
        default:
          checkTrillion = "${_convertNum(trillion)} ترلیۆن و";
      }
      String result = checkTrillion;

      String checkBillions;

      switch (billions) {
        case 0:
          checkBillions = "";
          break;
        default:
          checkBillions = "${_convertNum(billions)} ملیارد و";
      }
      result += checkBillions;

      String checkMillions;

      switch (millions) {
        case 0:
          checkMillions = "";
          break;
        default:
          checkMillions = "${_convertNum(millions)} ملیۆن و";
      }
      result = result + checkMillions;

      String checkHundredThousands;
      switch (hundredThousands) {
        case 0:
          checkHundredThousands = "";
          break;
        case 1:
          checkHundredThousands = "هەزار و";
          break;
        default:
          checkHundredThousands = "${_convertNum(hundredThousands)} هەزار و";
      }
      result = result + checkHundredThousands;

      String checkThousand;
      checkThousand = _convertNum(thousands);
      result = result + checkThousand;

      if (result.endsWith(" و")) {
        result = result.substring(0, result.length - 2);
      }

      return isMoney ? "$result دیناری عراقی" : result;
    } on FormatException catch (e) {
      print(e.toString());
      return "هەڵبژاردنی جۆریەتی هەڵەیە";
    }
  }

  static String _convertNum(int number) {
    List<String> tensNames = [
      "",
      " ده و",
      " بیست و",
      " سی و",
      " چل و",
      " پەنجا و",
      " شەست و",
      " حەفتا و",
      " هەشتا و",
      " نەوەد و"
    ];

    List<String> numNames = [
      "",
      " یەک",
      " دوو",
      " سێ",
      " چوار",
      " پێنج",
      " شەش",
      " حەوت",
      " هەشت",
      " نۆ",
      " ده",
      " یازده",
      " دوازده",
      " سێزده",
      " چوارده",
      " پازده",
      " شازده",
      " حەڤدە",
      " هەژدە",
      " نۆزدە"
    ];

    List<String> thousandsNames = [
      "",
      " سەد و",
      " دوو سەد و",
      " سێ سەد و",
      " چوار سەد و",
      " پێنج سەد و",
      " شەش سەد و",
      " حەوت سەد و",
      " هەشت سەد و",
      " نۆ سەد و"
    ];
    String soFar;
    if (number % 100 < 20) {
      soFar = numNames[number % 100];
      number = number ~/ 100;
    } else {
      soFar = numNames[number % 10];
      number = number ~/ 10;
      soFar = tensNames[number % 10] + soFar;
      number = number ~/ 10;
    }
    if (number == 0) {
      if (soFar.endsWith(" و")) {
        soFar = soFar.substring(0, soFar.length - 2);
      }
      return soFar;
    }
    var str = "";
    str = (thousandsNames[number] + soFar);
    if (str.endsWith(" و") || str.endsWith("و ")) {
      str = str.substring(0, str.length - 2);
    }
    return str;
  }
}
