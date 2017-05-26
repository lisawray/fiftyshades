# Fifty Shades Text Generator
Computer generated erotica in the style of Fifty Shades of Gray, for the discerning technophile.

This is the code backing my website, [xwray.com/fiftyshades](http://xwray.com/fiftyshades). It's generated from a lovingly crafted hand written grammar.

## This is a Markov chain text generator, right?
This is the number one question I get, and NO, that would have been easier (but not as cool)! Markov chain generators produce text that "sounds" right but is meaningless and often not grammatically sound (although sometimes the juxtapositions can seem poetic or profound). Most text generators on the web are Markov generators. That's probably because natural language processing is complex and writing a hand-tuned grammar is difficult and time-taking. But considering the gravity of my source material, nothing less would do.

## So how does this work?
It's a set of vocabulary and assembly rules (a "grammar"), fed through an "engine" that recursively evaluates them. 

A grammar is a series of super-detailed instructions to tell the computer how to write: first starting with various patterns of paragraphs, then constructing each paragraph from a series of possible combinations of sentences, then each sentence from phrases, then each phrase from combinations of specific words.

Provided you have written your rules correctly, this method produces grammatically correct language (such as "[Colorless green ideas sleep furiously](https://en.wikipedia.org/wiki/Colorless_green_ideas_sleep_furiously)").  However, you do not have to make semantically _meaningful_ text this way. In fact, most examples of the genre don't. (See the fabulous [Postmodernism Generator](http://www.elsewhere.org/pomo/)—where the joke is that it's almost too obscure to tell that it doesn't make sense!). But my personal interest—and the source of humor of this particular project—is in generating text that is indistinguishable from the original material. It is still debatable whether the original is meaningful.

## How to run the code
This code is written in pb format and designed for use with the [Dada Engine](http://dev.null.org/dadaengine/). Once you've downloaded the project, you run it on the command line with your script as an argument:

`% ./dada 50shades.pb`

I encourage you to read the Dada Engine's [manual](http://dev.null.org/dadaengine/manual-1.0/dada_toc.html), especially [the section explaining the pb language](http://dev.null.org/dadaengine/manual-1.0/dada.html#SEC4). As you can see, the tool itself is pretty simple, but you can achieve uncanny results by carefully hand-tuning your grammar. 

You can find other examples of pb files by downloading the Dada Engine from the website above. There's also a mirror of the Dada Engine on Github [here](https://github.com/orenmazor/Dada-Engine).

## What about the website?
The website randomly shows 1 of 500 pre-generated texts produced by the Dada Engine. It's possible to produce lots more, but this way people can try a number of different texts without repeating and still be able to perma-link any favorites. 

## Known issues:
The documentation for the Dada Engine explicitly states "If a rule has several options, the same option will never be chosen twice in immediate succession."  As far as I can tell, this isn't true—sometimes repeated phrases are generated. 

Questions, comments, and feedback welcomed at [lisawray+fiftyshades@gmail.com](mailto:lisawray+fiftyshades@gmail.com). 
