/* Title: Project 1 - Part D */
/* Author: Julian Sweatt */
/* Description: Prints the number of positive, negative, and real numbers from stdin */

%{
    int positives = 0;
    int negatives = 0;
    int reals = 0;
%}
/* Token Declarations */
pos \+?([0-9])*\.?([0-9])*
neg \-([0-9])*\.?([0-9])*
newlines ([\n])
other .

/* Lex Grammar Rules */
%%
{pos} {positives++;reals++;}
{neg} {negatives++;reals++;}
{newlines} {}
{other} {}
%%

int main()
{
    yylex();
    printf("Number of Positive Numbers: %d\n", positives);
    printf("Number of Negative Numbers: %d\n", negatives);
    printf("Number of Real Numbers: %d\n", reals);
    return 0;
}