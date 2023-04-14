cproj.exe : main.o palindrome.o pyramid.o fact.o
	gcc -o cproje.exe main.o palindrome.o pyramid.o fact.o

main.o : main.c
	gcc -c main.c
palindrome.o : palindrome.c
	gcc -c palindrome.c
pyramid.o : pyramid.c
	gcc -c pyramid.c
fact.o : fact.c
	gcc -c fact.c
