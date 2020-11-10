# Introduction
This is a project for removing Arabic diacritics from Arabic text.


# How to build
stack build

# How to run unit tests
stack test

# How to install
stack install

# Example usages from the command line without installing

## By putting file name
stack run -- -r README.md

## By redirecting Standard input
stack run -- -r < README.md


# Example usages from the command line after installing

## By putting file name
arabic-diacritic-removal -r README.md

## By redirecting Standard input
arabic-diacritic-removal -r < README.md


# Example Input:
 هٰذِهٖ شَجَرَةٌ جَدِيْدَةٌ