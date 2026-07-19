package main

import "core:math/rand"

// a list of the 100 most common English words, in order of most frequent to least frequent
// these appear according to the distribution determined by Zipf's law.
// The first item has a frequency weight of 1/1. The second one is 1/2. The third one is 1/3, etc.



TOTAL_WEIGHT : f64 : 5.1873775176396206 // 1/1 + 1/2 + 1/3 + 1/4 + ... + 1/100



GetRandomCommonWordIndex :: proc() -> int {
    randomized_weight := rand.float64() * TOTAL_WEIGHT
    for i in 0..<100 {
        randomized_weight -= 1/f64(i+1)
        if randomized_weight < 0 do return i
    }
    return 99
}



most_common_words: [100]StringSet = {
    {"the", "MZ"},
    {"be", "bF"},
    {"to", "tU"},
    {"of", "Zv"},
    {"and", "and"},
    {"a", "B"},
    {"in", "in"},
    {"that", "Mat"},
    {"have", "hav"},
    {"I", "I"},
    {"it", "it"},
    {"for", "fR"},
    {"not", "nGt"},
    {"on", "Gn"},
    {"with", "wiM"},
    {"he", "hF"},
    {"as", "az"},
    {"you", "jU"},
    {"do", "dU"},
    {"at", "at"},
    {"this", "Mis"},
    {"but", "bZt"},
    {"his", "hiz"},
    {"by", "bI"},
    {"from", "frZm"},
    {"they", "MB"},
    {"we", "wF"},
    {"say", "sB"},
    {"her", "hV"},
    {"she", "SF"},
    {"or", "R"},
    {"an", "an"},
    {"will", "wil"},
    {"my", "mI"},
    {"one", "wZn"},
    {"all", "Gl"},
    {"would", "wLd"},
    {"there", "ME"},
    {"their", "ME"},
    {"what", "hwZt"},
    {"so", "so"},
    {"up", "Zp"},
    {"out", "Wt"},
    {"if", "if"},
    {"about", "ZbWt"},
    {"who", "hU"},
    {"get", "get"},
    {"which", "hwitS"},
    {"go", "go"},
    {"me", "mF"},
    {"when", "hwen"},
    {"make", "mBk"},
    {"can", "kan"},
    {"like", "lIk"},
    {"time", "tIm"},
    {"no", "no"},
    {"just", "yZst"},
    {"him", "him"},
    {"know", "no"},
    {"take", "tBk"},
    {"people", "pFpZl"},
    {"into", "intU"},
    {"year", "jY"},
    {"your", "jR"},
    {"good", "gLd"},
    {"some", "sZm"},
    {"could", "kLd"},
    {"them", "Mem"},
    {"see", "sF"},
    {"other", "ZMV"},
    {"than", "Man"},
    {"then", "Men"},
    {"now", "nW"},
    {"look", "lLk"},
    {"only", "onlF"},
    {"come", "kZm"},
    {"its", "its"},
    {"over", "ovV"},
    {"think", "TiNk"},
    {"also", "Glso"},
    {"back", "bak"},
    {"after", "aftV"},
    {"use", "jUs"},
    {"two", "tU"},
    {"how", "hW"},
    {"our", "WV"},
    {"work", "wVk"},
    {"first", "fVst"},
    {"well", "wel"},
    {"way", "wB"},
    {"even", "Fvin"},
    {"new", "njU"},
    {"want", "wGnt"},
    {"because", "bikGz"},
    {"any", "enF"},
    {"these", "MFz"},
    {"give", "giv"},
    {"day", "dB"},
    {"most", "mos"},
    {"us", "Zs"},
}
