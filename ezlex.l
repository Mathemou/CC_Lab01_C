%{
   // Definitions
%}

%option yylineno

%%
begin {printf("%d: ",  yylineno); ECHO ; printf(" -> BEGIN\n"); }
bool {printf("%d: ",  yylineno); ECHO ; printf(" -> BOOL\n"); }
else {printf("%d: ",  yylineno); ECHO ; printf(" -> ELSE\n"); }
end {printf("%d: ",  yylineno); ECHO ; printf(" -> END\n"); }
false {printf("%d: ",  yylineno); ECHO ; printf(" -> FALSE\n"); }
if {printf("%d: ",  yylineno); ECHO ; printf(" -> IF\n"); }
int {printf("%d: ",  yylineno); ECHO ; printf(" -> INT\n"); }
program {printf("%d: ",  yylineno); ECHO ; printf(" -> PROGRAM\n"); }
read {printf("%d: ",  yylineno); ECHO ; printf(" -> READ\n"); }
real {printf("%d: ",  yylineno); ECHO ; printf(" -> REAL\n"); }
repeat {printf("%d: ",  yylineno); ECHO ; printf(" -> REPEAT\n"); }
string {printf("%d: ",  yylineno); ECHO ; printf(" -> STRING\n"); }
then {printf("%d: ",  yylineno); ECHO ; printf(" -> THEN\n"); }
true {printf("%d: ",  yylineno); ECHO ; printf(" -> TRUE\n"); }
until {printf("%d: ",  yylineno); ECHO ; printf(" -> UNTIL\n"); }
var {printf("%d: ",  yylineno); ECHO ; printf(" -> VAR\n"); }
WRITE {printf("%d: ",  yylineno); ECHO ; printf(" -> WRITE\n"); }
:= {printf("%d: ",  yylineno); ECHO ; printf(" -> ASSIGN\n");}
= {printf("%d: ",  yylineno); ECHO ; printf(" -> EQ\n");}
- {printf("%d: ",  yylineno);ECHO ; printf(" -> MINUS\n");}
; {printf("%d: ",  yylineno);ECHO ; printf(" -> SEMI\n");}
[0-9]* {printf("%d: ",  yylineno);ECHO ; printf(" -> INT_VAL\n");}
[A-Z|a-z]* {printf("%d: ",  yylineno);ECHO ; printf(" -> ID\n");}
\".*\" {printf("%d: ",  yylineno);ECHO ; printf(" -> STRING\n");}
\{[^}]*\} {}
" " {}
\n {}
. {printf("%d: ",  yylineno) ; printf("LEXICAL ERROR (7): Unknown symbol "); ECHO ; printf("\n") ; exit(1);}
%%

int main() {
    yylex();
    return 0;
}