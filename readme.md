# trunic driller

work-in-progress project. This file will be used as a TODO list until the project matures more

TODO:
- remember to utilize the Odin Rounded font, as that is what is used in the game, and is kind of funny since you code it in Odin. Maybe you will have to make it a dependency in the repo or something though? Not sure how it works. Maybe you can just source it from the project files or embed it in the binary? If not then you should also definitely make it go for a more common font in a similar size if the font isn't found. Remember that you can ask the Odin discord how to do stuff like this, like embedding files into the binary

- make a menu with buttons you can press. Note that these should scale properly depending on the resolution of the window

selections before starting the main part of the program:
- word selection: [common words / common word cluster / random words / random words cluster / sentences]. common words are stuff like "the, that, for, is". random words are just completely random stuff like "car, apple, never, penis". when it says "cluster" it just means that it is showing 5 words at a time or something, instead of just one. sentences are entire grammatically correct sentences with punctuation.
- action: [read / write / both]. reading is just when you see the trunic and then the text for what it says underneath once you continue. writing is where you see the normal text, and then the trunic, where you can write with your mouse. both is where it does both.


once you are done with this project, link it in the Finji Discord! Grape told you to do that! If you do then it would be nice to also compile a version for Windows. It's not absolutely crucial though. It's probably mostly just important if anyone says that they are specifically interested in using the program, where you can then either spend the time figuring it out, or ask for help from someone in the server who is willing to help out or something. Remember that Grape posted the Trunic kite thing which got quite a lot of attention, so it definitely wouldn't be impossible to get a decent amount of attention for this project; maybe especially if you ask for help with making new words and sentences. To make it easier to implement, as it might be hard for people (... and yourslf) to do merge request things in github, maybe just ask people to send you messages in a specific format which you can just copy-paste into the program. To make it easier for everyone else, probably don't expect them to use the python program. Instead just ask them to use the IPA translator website, insert spaces where they are missing when you copy-paste it, add punctuation if it isn't included (only a specific set of punctuations are allowed!) and then format it in a specific way when sending the message to you. You can then make another python script that takes that message and converts it into Odin code, where it also uses the already existing python file to convert the IPA to a trunic string. Then of course also give everyone credit, where when you copy-paste a set of strings, you have a comment at the start of the block saying something like "strings added by: username".

note that runes need to keep track of their width, as it won't be constant due to punctuations and stuff! Also, keep track of all symbols that the final strings will be able to have, by seeing the possible strings that the python file is able to output!

remember to make all rendering be based on the window size, and that no positions are hard-coded. Check what y position the runes are rendered at if you haven't un-hard-codified it yet.

To convert a word to a string that the project can understand and make runes out of, type stuff into https://ipachart.app/ipa-translator and then put the IPA string through IpaToAscii.py. The table below shows what rune each character represents, where it is according to the graphic in https://tunic.wiki/books/secrets/page/trunic (also remember to keep this information, as it will be relevant even after the project is done... or at the very least how to translate to IPA and using the python file so that the odin program understands everything is. I guess the table doesn't matter once you have actually coded everything). Also keep in mind that the python file is still able to generate punctuations like ,.-! so the program needs to be able to render that!
o U a G F e L B I
V R Y E A Z i x W
N H T S t w s r k
p f g d n m z j v
c   h M     y l b

