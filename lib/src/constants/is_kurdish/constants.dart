/// Farsi Alphabets
const kuAlphabet = 'ئابپتجچحخدرڕزژسشعغفڤقکگلڵمنوۆهەیێ';

/// Farsi Numbers
const kuNumber = '٠١٢٣٤٥٦٧٨٩';

/// Farsi Short Vowels
const kuShortVowels = 'َُِ';

/// Others Farsi Letters
const kuOthers = '‌آاً';

/// Farsi Letters Mixed with Arabic
const kuMixedWithArabic = 'ًٌٍَُِّْٰٔءك‌ةۀأإيـئؤ،';

/// All Farsi Letters
const kuText = kuAlphabet + kuNumber + kuShortVowels + kuOthers;

/// Letters that is common in Arabic and Farsi
const kuComplexText = kuText + kuMixedWithArabic;

const trimPatternRegExp = '["' r"'-+()؟\s.]";
