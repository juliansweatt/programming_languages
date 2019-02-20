/* Title: Project 1 - Part B */
/* Author: Julian Sweatt */
/* Description: Prints the longest word & its length from stdin */

%{
    // Imported for `strcpy`
    #include <string.h>

    // Variable Declarations
    int length = 0;
    char* longestWord;
%}
/* Token Declarations */
wordtoken ([A-Za-z])*
newlines ([\n])
other .

/* Lex Grammar Rules */
%%
{wordtoken} {
        if(length < yyleng)
        {
            length = yyleng;
            longestWord = (char*)realloc(longestWord, (sizeof(char) * length) + 1);
            strcpy(longestWord, yytext);
        }
    }
{newlines} {}
{other} {}
%%

int main()
{
    longestWord = (char*)calloc(1,sizeof(char));
    yylex();
    printf("Longest Word:%s\n", longestWord);
    printf("Length of Longest Word:%d\n", length);
    free(longestWord);
    return 0;
}