/* Title: Project 1 - Part C */
/* Author: Julian Sweatt */
/* Description: Prints the number of vowels (AEIOU) and consonants from stdin */

%{
    int vowels = 0;
    int consonants = 0;
%}
/* Token Declarations */
vowelTokens ([AEIOUaeiou])
conTokens ([A-Za-z])
newlines ([\n])
other .

/* Lex Grammar Rules */
%%
{vowelTokens} {vowels++;}
{conTokens} {consonants++;}
{newlines} {}
{other} {}
%%

int main()
{
    yylex();
    printf("Number of Vowels: %d\n", vowels);
    printf("Number of Consonants: %d\n", consonants);
    return 0;
}