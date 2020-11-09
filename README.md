# Introduction
This is a project for converting letters to uppercase or lowercase.


# How to build
stack build

# How to run unit tests
stack test

# How to install
stack install

# Example usages from the command line without installing

## By putting file name
stack run -- -l README.md
stack run -- -u README.md

## By redirecting Standard input
stack run -- -l < README.md
stack run -- -u < README.md


# Example usages from the command line after installing

## By putting file name
lettercase -l README.md
lettercase -u README.md

## By redirecting Standard input
lettercase -l < README.md
lettercase -u < README.md
