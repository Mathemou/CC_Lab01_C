# MAKEFILE
#gcc -g -o exect *.c

# Nome do compilador
CC = gcc

exec = flex -o <arq saida.c> <lex.l>

exec2 = gcc <arq saida.c> -o <arq exec> -lfl