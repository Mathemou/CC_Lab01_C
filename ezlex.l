%{
   // Definitions
%}

%option yylineno

%%
begin {printf("%d: ", yylineno++); ECHO ; printf("\t-> BEGIN\n"); }
bool {printf("%d: ", yylineno++); ECHO ; printf("\t-> BOOL\n"); }
else {printf("%d: ", yylineno++); ECHO ; printf("\t-> ELSE\n"); }
end {printf("%d: ", yylineno++); ECHO ; printf("\t-> END\n"); }
false {printf("%d: ", yylineno++); ECHO ; printf("\t-> FALSE\n"); }
if {printf("%d: ", yylineno++); ECHO ; printf("\t-> IF\n"); }
int {printf("%d: ", yylineno++); ECHO ; printf("\t-> INT\n"); }
program {printf("%d: ", yylineno++); ECHO ; printf("\t-> PROGRAM\n"); }
read {printf("%d: ", yylineno++); ECHO ; printf("\t-> READ\n"); }
real {printf("%d: ", yylineno++); ECHO ; printf("\t-> REAL\n"); }
repeat {printf("%d: ", yylineno++); ECHO ; printf("\t-> REPEAT\n"); }
string {printf("%d: ", yylineno++); ECHO ; printf("\t-> STRING\n"); }
then {printf("%d: ", yylineno++); ECHO ; printf("\t-> THEN\n"); }
true {printf("%d: ", yylineno++); ECHO ; printf("\t-> TRUE\n"); }
until {printf("%d: ", yylineno++); ECHO ; printf("\t-> UNTIL\n"); }
var {printf("%d: ", yylineno++); ECHO ; printf("\t-> VAR\n"); }
WRITE {printf("%d: ", yylineno++); ECHO ; printf("\t-> WRITE\n"); }
:= {printf("%d: ", yylineno++); ECHO ; printf("\t-> ASSIGN\n");}
= {printf("%d: ", yylineno++); ECHO ; printf("\t-> EQ\n");}
- {printf("%d: ", yylineno++);ECHO ; printf("\t-> MINUS\n");}
; {printf("%d: ", yylineno++);ECHO ; printf("\t-> SEMI\n");}
[0-9]* {printf("%d: ", yylineno++);ECHO ; printf("\t-> INT_VAL\n");}
[A-Z|a-z]* {printf("%d: ", yylineno++);ECHO ; printf("\t-> ID\n");}
\n {}
. {}
%%

int main() {
    yylex();
    return 0;
}