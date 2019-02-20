# Project 1
**Course:** COP4020 Programming Languages  
**Author:** Julian Sweatt  
**Instructor:** Dr. Shayok Chakraborty  
---

## Usage
### Compile
To compile each lex file, use the following two commands:
```
lex <lex_file.l>
cc lex.yy.c -lfl
```
For example, to compile `part_a.l`, run:
```
lex part_a.l
cc lex.yy.c -lfl
```

### Run
After compilation, a binary file `a.out` will be created in the current directory. To run the file using a test file, run:
```
./a.out < <name_of_test_file>
```
For example, to use the `test_part_a.txt` file as a test file, run:
```
./a.out < test_part_a.txt
```

## Contents
* [Part A](./part_a.l)  
    Prints the number of words in a file from standard input.
* [Part B](./part_b.l)  
    Prints the longest word in a file and its length from standard input.
* [Part C](./part_c.l)  
    Prints the number of vowels and consonants in a file from standard input.
* [Part D](./part_d.l)  
    Prints the number of positive, negative, and real numbers in a file from standard input.

## Remarks
* In [Part A](./part_a.l), a word is considered a series of alphabetical characters (uppercase or lowercase) separated by non-alphabetical characters.  
* In [Part C](./part_c.l), a character is considered a vowel if it is `a`, `e`, `i`, `o`, or `u`, uppercase or lowercase.  
* In [Part D](./part_d.l), it is assumed that all numbers are composed only of digits, optional positive and negative sign indicators, and a single optional decimal point. All numbers composed in this way should be real numbers, therefore all numbers collected by the positive or negative rules will be considered real numbers.  
* All parts contain a lex rule to uptake all other tokens and new-line characters. This prevents leftover text tokens from being dumped to standard output.
* It is assumed that all test files will be passed to the programs using shell I/O redirection.
