/* Title: Project 1 - Part A */
/* Author: Julian Sweatt */
/* Description: Prints the number of words from stdin */

%{
    int words = 0;
%}
/* Token Declarations */
wordtoken ([A-Za-z])*
newlines ([\n])
other .

/* Lex Grammar Rules */
%%
{wordtoken} {words++;}
{newlines} {}
{other} {}
%%

int main()
{
    yylex();
    printf("Number of Words: %d\n", words);
    return 0;
}