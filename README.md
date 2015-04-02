# fiftyshades
Computer generated erotica in the style of Fifty Shades of Gray, for the discerning technophile.

This is the code backing my website, [xwray.com/fiftyshades](xwray.com/fiftyshades).  It's a set of grammar and vocabulary rules written by hand.

## How to run the code
This code is written in pb format and designed for use with the [Dada Engine](http://dev.null.org/dadaengine/) by Andrew C. Bulhak. Once you've downloaded the project, you run it on the command line with your script as an argument:

`% ./dada 50shades.pb`

This is how [the documentation](http://dev.null.org/dadaengine/manual-1.0/dada.html#SEC3) explains it:

> The command dada first pipes your script (in this case `myscript.pb') through the C preprocessor; this allows you to include preprocessor macros, conditional definitions and external libraries of rules. The output of the preprocessor is then sent to pb, a program which reads in and evaluates the rules.

> The pb command reads the complete input before it emits anything. Once it has read everything, it evaluates the initial rule (also known as the start symbol); in turn, this causes any rules invoked from the initial rule to be evaluated. Unless a start symbol is specified on the command line, the first rule read that is not defined as a resource rule becomes the start symbol.

> As the rules are evaluated, the text generated is appended to a buffer in memory; once everything has been evaluated, the buffer's contents are emitted.

I encourage you to read the Dada Engine's [manual](http://dev.null.org/dadaengine/manual-1.0/dada_toc.html), especially [the section explaining the pb language](http://dev.null.org/dadaengine/manual-1.0/dada.html#SEC4). As you can see, the tool itself is pretty simple, but you can achieve uncanny results by carefully hand-tuning your grammar. 

You can find other examples of pb files by downloading the Dada Engine from the website above. There's also a mirror of the Dada Engine on Github [here](https://github.com/orenmazor/Dada-Engine).

## Known issues with the Dada Engine:
The documentation for the Dada Engine explicitly states "If a rule has several options, the same option will never be chosen twice in immediate succession."  As far as I can tell, this isn't true, it's very annoying, it's very annoying, and it's a huge problem with the engine.  See what I did there?  Consider yourself duly warned. 

Questions, comments, and feedback welcomed at [lisawray+fiftyshades@gmail.com](mailto:lisawray+fiftyshades@gmail.com). 
