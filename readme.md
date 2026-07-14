# trunic driller

work-in-progress project. This file will be used as a TODO list until the project matures more

- make renderer for trunic based on IPA characters or something, where the "font size" is easily adjustable. It should be able to support spaces, and different punctuation for sentences and hyphenated words.
- make a menu with buttons you can press. Note that these should scale properly depending on the resolution of the window

selections before starting the main part of the program:
- word selection: [common words / common word cluster / random words / random words cluster / sentences]. common words are stuff like "the, that, for, is". random words are just completely random stuff like "car, apple, never, penis". when it says "cluster" it just means that it is showing 5 words at a time or something, instead of just one. sentences are entire grammatically correct sentences with punctuation.
- action: [read / write / both]. reading is just when you see the trunic and then the text for what it says underneath once you continue. writing is where you see the normal text, and then the trunic, where you can write with your mouse. both is where it does both.


note that runes need to keep track of their width, as it won't be constant due to punctuations and stuff! Also, keep track of all symbols that the final strings will be able to have, by seeing the possible strings that the python file is able to output!

To convert a word to a string that the project can understand and make runes out of, type stuff into https://ipachart.app/ipa-translator and then put the IPA string through IpaToAscii.py. The table below shows what rune each character represents, where it is according to the graphic in https://tunic.wiki/books/secrets/page/trunic (also remember to keep this information, as it will be relevant even after the project is done... or at the very least how to translate to IPA and using the python file so that the odin program understands everything is. I guess the table doesn't matter once you have actually coded everything). Also keep in mind that the python file is still able to generate punctuations like ,.-! so the program needs to be able to render that!
o U a G F e L B I
V R Y E A Z i x W
N H T S t w s r k
p f g d n m z j v
c   h M     y l b

