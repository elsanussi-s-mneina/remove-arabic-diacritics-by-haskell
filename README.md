# Introduction
This is a project for removing Arabic diacritics from Arabic text. It is a command line program.

# About the Software Developer
The software developer is Elsanussi Mneina. This project was first shared on Github in 2020.

# To a potential user
Arabic is written with the Arabic script. A writing system that represents many sounds by optional symbols. These symbols are called diacritics in English, but are called tash-keel [taʃkiːl] in Arabic. Because these are optional, and because not all fonts support them, it is sometimes useful to delete them or hide them.

This may be especially useful when you want to compare and contrast Arabic text for differences other than those in diacritics. This might happen when you are searching for a word in Arabic.

## Rationale and design:
It is a command line program.

You can pass in the file name, and it will read it and print the result to standard output.

It does not modify any file passed in any way.

If you run the program without any arguments, then it will start in echo mode:
In echo mode, any line you type in is processed and the output is returned.

Note: Echo mode is not very user-friendly at the moment. This will be fixed later.


# To a Software Developer
You need Haskell to compile this. See https://www.haskell.org/downloads/ for installation instructions.

At a minimum you need a Haskell compiler.

This project is unusual for a Haskell project in that it only depends on base, and uses no language extensions.


## Development Rationale
This project is deliberately simpler than usual for a Haskell project. This is possible because the project does not do much. It simply filters text.

This project avoids using any Glasgow Haskell Compiler language extensions.
But this is the main reason, I do not use hspec, or hunit here as dependencies.
The imagined benefit of doing this is that this code could be used in other Haskell compilers in the future (that might not support these language extensions).

I included instructions on how to build using a makefile, cabal, and stack. Note the makefile requires the least installation to run, and is probably the most beginner friendly.


# How to build using only GHC and Make
`make`

To clean type:

`make clean`


# Using Cabal
To check the version number of Cabal:
`cabal --v`

cabal-install version 3.2.0.0
compiled using version 3.2.0.0 of the Cabal library 

## How to build
To compile all source files and make the executable:

`cabal build`

## How to run tests
To run the unit tests:

`cabal test`

## How to run the program without installing
To run the executable:

`cabal run arabic-diacritic-removal`

## How to install the program
`cabal install arabic-diacritic-removal`

# Using Stack
To check the stack version:
`stack --version`

Version 2.3.1, Git revision de2a7b694f07de7e6cf17f8c92338c16286b2878 (8103 commits) x86_64 hpack-0.33.0

## How to build
To compile all source files and make the executable:

`stack build`

## How to run tests
To run the unit tests:

`stack test`

## How to run the program without installing
To run the executable:

### By putting file name
stack run -- -r README.md

### By redirecting Standard input
stack run -- -r < README.md

## How to install the program

`stack install`



# Example usages from the command line after installing

## By putting file name
arabic-diacritic-removal -r README.md

## By redirecting Standard input
arabic-diacritic-removal -r < README.md


# Example Input:
 هٰذِهٖ شَجَرَةٌ جَدِيْدَةٌ