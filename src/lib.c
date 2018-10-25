#include <stdio.h>

int getint(){
    int tmp;
	scanf("%d", &tmp);
	return tmp;
}
/*
int getchar(){
	unsigned char tmp;
	scanf("%c", &tmp);
	return tmp;
}
*/

int putint(int x){
    printf("%d", x);
    return 0;
}
/*
int putchar(int c){
	printf("%c", c);
	return 0;
}
*/
