# trunic driller

work-in-progress project. This file will be used as a TODO list until the project matures more

TODO:

- create the drawing logic. Maybe do it where you can just draw straight lines? Also make an eraser tool! Just doing straight lines simplifies the logic a lot. Also add undo logic
- when compiling for windows, see how you would assign an icon to the executable. A fun idea could be to try to immitate how items look in the game, and make a drill item. Also obviously go through the effort of finding out how to actually compile for it. Maybe also see if odin can be compiled to mac??? idk
- does the steamdeck use ARM? If so then definitely also compile for ARM if you can as that is poentially a decent userbase
- Make a Reddit post about the project. Title it something like "I'm making a program for practicing trunic reading and writing speed, and I need help with making random sentences for the program to use!", where you in the description link to the repo and explain how the sentences should be and stuff. Note both for here and for the future, that when you say how long a sentence can be at max, it doesn't mean that sentences HAVE to be that long. Having short sentences is also very good, so that you don't just get long ones all the time when using the program

mention to Finji Discord that you are making this and that you want sentence lists to use in the program! Say to structure it like the code-block you have a bit further down. Make sure to give some guidelines like allowed symbols, to use proper punctuation and capitalization, recommended max sentence length, to use normal words so that the IPA translator works, and also say that the more sentences they make the better! You should also give some example sentences so they have an idea what they can be of (they can be both TUNIC related or just completely random sentences. They can be goofy, they can be serious) Also tell them that you are going to make a video about the project later which you will then link in the discord (assuming that it is allowed at least)

come to think of it, the best way of doing this would probably be to first before the project is properly usable, you ask the discord to give you sentences so that you can actually compile the first complete version of the program. THEN you make the YouTube video about it, where you need to make sure to show how to install it since github is pretty confusing. In that video you can again ask for a list of sentences so that the collection can be even greater.

NOTE! When talking about giving credit to people making sentences, you need to specify that the credit is given in the code, and not in the program itself! Also show them where they can see the code so that they can see their name in it!

when you make the youtube video you should definitely use the comments as a place to submit more sentences. Note that you should tell them to read the start of the description to see if you are still up for adding more submissions, where the **first part** of the description should say something like "SENTENCE SUBMISSIONS ARE STILL OPEN!" if it is. Say that the format is as following
```
the name you want to be credited in the code, and if you want to, other information that you are interested in commenting. Note that underneath this row, before the list of sentences, should be an empty row, so that it's clear where the sentence list starts to make it easier for you to copy-paste

sentence 1
sentence 2
sentence 3
```

of course remember to change this readme file once the project is done to explain how the project works and stuff. You could potentially also mention how people can add more sentences if they want to, and how to do it.
Mention how to proceed you can both click the "reveal"/"next" button, OR press space or enter.

# How to convert a string to a trunic string which the program can use to properly display the original string but with trunic
(note that this isn't what users should use if they want to easily add stuff to the project without having to use the python script and stuff. They should have an easier way where they can just get it as an IPA string, where they format that with the original string in a specific way, and then send it to you, so that you can take care of the process of translating it to a trunic string and adding it to the code)

First convert it into an IPA string. use
**NOTE!** Honestly you don't even need to make it this complicated for the people you want sentence help with. They can literally just write their stuff in normal text, as you can super easily just copy-paste their stuff in the website, making them not have to deal with any of that complexity. All you have to do is tell them what symbols they are allowed to use, how long the sentences can be, and that each sentence is seperated by being on a different line. Maybe note that there shouldn't be any empty lines inbetween each sentence?
1. https://aryanpingle.com/Runic/ if the website is online (as it went offline once), where you paste the string in, and copy the text that appers in "Input (Phonetic)". Make it clear to the user that if something fails to translate, then that part of the string won't appear in "Input (Phonetic)". So if the amount of words in "Input (English)" and "Input (Phonetic)", that probably means that a word failed to translate. Also keep in mind that using apostrophes as quotation marks makes the word unable to translate. I think you can just use apostrophes in contractions like "don't", where it is expected that the apostrophe is removed in "Input (Phonetic)". Also make sure to give a list of allowed symbols to use, and also to make sure that they are present in "Input (Phonetic)", with exception of apostrophes when used as contractions.
2. https://ipachart.app/ipa-translator (HEAVILY DISCOURAGED TO USE THIS AS IT TRANSLATES DIFFERENTLY! If the first website is down then you should wait a LONG TIME for it to come back up before using this. This should be a very last-resort!) if the above website is down. It is more of a pain in the ass to use though and is way slower. Make sure that it is set to "American English", input the string, and press "Translate to IPA". Note that you need to press the "Copy" button, as otherwise it doesn't copy the spaces, which is important. You do however also need to remove back-slashes at the start and end of the copied text. Also note that the apostrophes that appear before words sometimes aren't actually apostrophes. They look extremely similar but they are different characters that aren't symbols, meaning that they don't get included as apostrophes in the corresponding trunic.

Once you have the string, input it in IpaToTrunicString.py to get the corresponding trunic string that the program can use to actually display the correct trunic runes.

This probably isn't needed to be known, but could be good for documentation purposes. The characters in a trunic string use the trunic rune from the table below, when comparing it to the table in https://tunic.wiki/books/secrets/page/trunic
o U a G F e L B I
V R Y E A Z i x W
N H T S t w s r k
p f g d n m z j v
c   h M     y l b
