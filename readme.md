# trunic driller

A simple program for improving one's ability to both read and write trunic for the game TUNIC. Note that this project isn't intended to teach the fundamentals of the writing system, and is instead intended for improving one's efficiency at reading and writing with the system. If you want to actually learn how trunic works then I recommend [this YouTube video](https://youtu.be/PH8ktkDYO1Y). 

The way this program works is very simple. Before you start practicing you will make two choices: What set of words/sentences to use, and if you want to focus on reading trunic, or writing normal text into trunic. 

For the first option, you have the following choices: "common words", "random words", "sentences", and also cluster variants of common and random words. "common words" give you the 100 most common English words, with the randomizer being weighed according to how often each word appears. "random words" give you completely random words (duh). "sentences" gives you full sentences instead of standalone words. And finally, the cluster variants of common and random words simply just shows you 5 words at a time instead of just 1, which can help make practicing more efficient once you get fast enough, as you don't have to continue to the next phrase as frequently. 

For the second option, you get the following choices: "reading", "writing", and "both". When "reading" has been selected, trunic is shown to the user, where after proceeding you will get the normal text version of the trunic phrase, so that you can check that you translated it correctly. When "writing" has been selected, it shows you a phrase in normal text, where you are to translate it into trunic which you can do with the drawing feature (more info in next paragraph). After proceeding you will be shown the trunic version of the phrase, where you can check if you wrote it correctly. Lastly, the "both" option simply just alternates between "reading" and "writing" for every phrase.

To make it easier to practice writing, the program includes some basic drawing functionality. If you drag with your mouse you will create a straight line, and if you click without moving your mouse you will create a ring that can be placed on the bottom of runes. You can also erase by holding down right-click.

## How to easily contribute to the project by adding more sentences

The collection of sentences has to be very large to prevent the from appearing many times and thus be memorized, reducing the quality of the trunic practice. I would love to get help with adding to the collection of sentences, and if you contribute with any sentences then I will credit you with your name in the code, by the sentences that you have made (which can be seen in the file `sentence_colleciton.odin`). Take a look in the Discussions tab at the top of this github repository for more information!












## WORK-IN-PROGRESS PART OF README

TODO:
- even though you have few sentences, release a v1.0.0 version before making any online posts about the project
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
Mention how you erase with right mouse. Click to make a ring, and drag to make a line.
