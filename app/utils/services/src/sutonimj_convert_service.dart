part of ui;

class BanglaUnicordConvert {
  static String convertSutonnyMJToUnicode(String sutonnyMJText) {
    final List<String> sutonnyMJChars = sutonnyMJText.split('');

    final Map<String, String> unicodeChars = {
      'ক': 'ক',
      'খ': 'খ',
      'গ': 'গ',
      'ঘ': 'ঘ',
      'ঙ': 'ঙ',
      'চ': 'চ',
      'ছ': 'ছ',
      'জ': 'জ',
      'ঝ': 'ঝ',
      'ঞ': 'ঞ',
      'ট': 'ট',
      'ঠ': 'ঠ',
      'ড': 'ড',
      'ঢ': 'ঢ',
      'ণ': 'ণ',
      'ত': 'ত',
      'থ': 'থ',
      'দ': 'দ',
      'ধ': 'ধ',
      'ন': 'ন',
      'প': 'প',
      'ফ': 'ফ',
      'ব': 'ব',
      'ভ': 'ভ',
      'ম': 'ম',
      'য': 'য',
      'র': 'র',
      'ল': 'ল',
      'শ': 'শ',
      'ষ': 'ষ',
      'স': 'স',
      'হ': 'হ',
      'ড়': 'ড়',
      'ঢ়': 'ঢ়',
      'য়': 'য়',
      'া': 'া',
      'ি': 'ি',
      'ী': 'ী',
      'ু': 'ু',
      'ূ': 'ূ',
      'ৃ': 'ৃ',
      'ে': 'ে',
      'ৈ': 'ৈ',
      'ো': 'ো',
      'ৌ': 'ৌ',
      'ং': 'ং',
      'ঃ': 'ঃ',
      'ঁ': 'ঁ',
      ' ': ' ',
      '০': '০',
      '১': '১',
      '২': '২',
      '৩': '৩',
      '৪': '৪',
      '৫': '৫',
      '৬': '৬',
      '৭': '৭',
      '৮': '৮',
      '৯': '৯',
      '(': ')'
    };

    String unicodeText = '';
    for (int i = 0; i < sutonnyMJChars.length; i++) {
      if (unicodeChars.containsKey(sutonnyMJChars[i])) {
        unicodeText += unicodeChars[sutonnyMJChars[i]]!;
      } else {
        unicodeText += sutonnyMJChars[i];
      }
    }

    return unicodeText;
  }
}
//BanglaUnicordConvert.convertSutonnyMJToUnicode("কোর্সসমূহ"), use it in translate