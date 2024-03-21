%{
   // Definitions
%}

%%
a { ECHO; printf(" -> Rule 1\n"); }
ab { ECHO; printf(" -> Rule 2\n"); }
a*b+ { ECHO; printf(" -> Rule 3\n"); }
(a|b)*abb { ECHO; printf(" -> Rule 4\n"); }
\n { printf("Next input please => "); }
chato { ECHO; printf("vc que eh\n"); }
te[ \t\n]odeio { ECHO; printf("eu te odeio mais\n"); }
lixo { ECHO; printf("disso que sua mae te chama\n"); }
qual[ \t\n]seu[ \t\n]nome.* { ECHO; printf("maikon\n"); }
burro { ECHO; printf("quem me fez\n"); }

.* { ECHO; printf(" -> não entendi, repete danado\n"); }
%%