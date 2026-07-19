# trunic driller

work-in-progress project. This file will be used as a TODO list until the project matures more

TODO:

- fix the python parsing of the text file. If your phrase uses "quotation marks", then the printed output should contain backslashes, so that it can be pasted as odin code directly, however despite using repr() it doesn't seem to print the backslashes.
- make a menu with buttons you can press. Note that these should scale properly depending on the resolution of the window

selections before starting the main part of the program:
- word selection: [common words / common word cluster / random words / random words cluster / sentences]. common words are stuff like "the, that, for, is". random words are just completely random stuff like "car, apple, never, penis". when it says "cluster" it just means that it is showing 5 words at a time or something, instead of just one. sentences are entire grammatically correct sentences with punctuation.
- action: [read / write / both]. reading is just when you see the trunic and then the text for what it says underneath once you continue. writing is where you see the normal text, and then the trunic, where you can write with your mouse. both is where it does both.


once you are done with this project, link it in the Finji Discord! Grape told you to do that! If you do then it would be nice to also compile a version for Windows. It's not absolutely crucial though. It's probably mostly just important if anyone says that they are specifically interested in using the program, where you can then either spend the time figuring it out, or ask for help from someone in the server who is willing to help out or something. Remember that Grape posted the Trunic kite thing which got quite a lot of attention, so it definitely wouldn't be impossible to get a decent amount of attention for this project; maybe especially if you ask for help with making new words and sentences. To make it easier to implement, as it might be hard for people (... and yourslf) to do merge request things in github, maybe just ask people to send you messages in a specific format which you can just copy-paste into the program. To make it easier for everyone else, probably don't expect them to use the python program. Instead just ask them to use the IPA translator website, insert spaces where they are missing when you copy-paste it, add punctuation if it isn't included (only a specific set of punctuations are allowed!) and then format it in a specific way when sending the message to you. You can then make another python script that takes that message and converts it into Odin code, where it also uses the already existing python file to convert the IPA to a trunic string. Then of course also give everyone credit, where when you copy-paste a set of strings, you have a comment at the start of the block saying something like "strings added by: username". Remember that you need to have a specific style-guide for how sentences should look! They need to be capitalized and have proper punctuation, where they are also somewhat limited in length, as there is no text-wrapping (and also to make it more managable when reading).

note that runes need to keep track of their width, as it won't be constant due to punctuations and stuff! Also, keep track of all symbols that the final strings will be able to have, by seeing the possible strings that the python file is able to output!

remember to make all rendering be based on the window size, and that no positions are hard-coded. Check what y position the runes are rendered at if you haven't un-hard-codified it yet.

of course remember to change this readme file once the project is done to explain how the project works and stuff. You could potentially also mention how people can add more sentences if they want to, and how to do it.

# How to convert a string to a trunic string which the program can use to properly display the original string but with trunic
(note that this isn't what users should use if they want to easily add stuff to the project without having to use the python script and stuff. They should have an easier way where they can just get it as an IPA string, where they format that with the original string in a specific way, and then send it to you, so that you can take care of the process of translating it to a trunic string and adding it to the code)

First convert it into an IPA string. use
1. https://aryanpingle.com/Runic/ if the website is online (as it went offline once), where you paste the string in, and copy the text that appers in "Input (Phonetic)". Make it clear to the user that if something fails to translate, then that part of the string won't appear in "Input (Phonetic)". So if the amount of words in "Input (English)" and "Input (Phonetic)", that probably means that a word failed to translate. Also keep in mind that using apostrophes as quotation marks makes the word unable to translate. I think you can just use apostrophes in contractions like "don't", where it is expected that the apostrophe is removed in "Input (Phonetic)". Also make sure to give a list of allowed symbols to use, and also to make sure that they are present in "Input (Phonetic)", with exception of apostrophes when used as contractions.
2. https://ipachart.app/ipa-translator if the above website is down. It is more of a pain in the ass to use though and is way slower. Make sure that it is set to "American English", input the string, and press "Translate to IPA". Note that you need to press the "Copy" button, as otherwise it doesn't copy the spaces, which is important. You do however also need to remove back-slashes at the start and end of the copied text. Also note that the apostrophes that appear before words sometimes aren't actually apostrophes. They look extremely similar but they are different characters that aren't symbols, meaning that they don't get included as apostrophes in the corresponding trunic.

Once you have the string, input it in IpaToTrunicString.py to get the corresponding trunic string that the program can use to actually display the correct trunic runes.

This probably isn't needed to be known, but could be good for documentation purposes. The characters in a trunic string use the trunic rune from the table below, when comparing it to the table in https://tunic.wiki/books/secrets/page/trunic
o U a G F e L B I
V R Y E A Z i x W
N H T S t w s r k
p f g d n m z j v
c   h M     y l b
