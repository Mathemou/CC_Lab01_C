%{
   // Definitions
%}

%%
begin {ECHO ; printf("-> BEGIN\n"); }
bool {ECHO ; printf("-> BOOL\n"); }
else {ECHO ; printf("-> ELSE\n"); }
end {ECHO ; printf("-> END\n"); }
false {ECHO ; printf("-> FALSE\n"); }
if {ECHO ; printf("-> IF\n"); }
int {ECHO ; printf("-> INT\n"); }
program {ECHO ; printf("-> PROGRAM\n"); }
read {ECHO ; printf("-> READ\n"); }
real {ECHO ; printf("-> REAL\n"); }
repeat {ECHO ; printf("-> REPEAT\n"); }
string {ECHO ; printf("-> STRING\n"); }
then {ECHO ; printf("-> THEN\n"); }
true {ECHO ; printf("-> TRUE\n"); }
until {ECHO ; printf("-> UNTIL\n"); }
var {ECHO ; printf("-> VAR\n"); }
WRITE {ECHO ; printf("-> WRITE\n"); }
:= {ECHO ; printf("-> ASSIGN\n");}
= {ECHO ; printf("-> EQ\n");}
- {ECHO ; printf("-> MINUS\n");}
; {ECHO ; printf("-> SEMI\n");}
[0-9]* {ECHO ; printf("-> INT_VAL\n");}
[A-Z|a-z]* {ECHO ; printf("-> ID\n");}
.* {ECHO ; printf("-> N VALE\n");}
%%