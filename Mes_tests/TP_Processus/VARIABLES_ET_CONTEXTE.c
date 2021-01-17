#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>
#include <malloc.h>

int g=66;
int *pg;

int main(int argc, char**argv) {

	// Variables de test
	int i=5;
	int *pi = (int *) malloc(sizeof(int));
	*pi=10;
	pg = (int *) malloc(sizeof(int));
	*pg=55;
	
	int pchild = fork();
	if (-1 == pchild) {	// Erreur au fork
		fprintf(stderr, "ERREUR AU FORK\n");
		exit(-1);
	}	
	if (0 == pchild) { // code du fils
		printf("CHILD : g=%d, pg=%d, &pg=%x, i=%d, pi=%d, &pi=%x\n", g,*pg,pg,i,*pi,pi);
		exit(0);
	}
	else {	// code du père
		printf("PARENT : g=%d, pg=%d, &pg=%x, i=%d, pi=%d, &pi=%x\n", g,*pg,pg,i,*pi,pi);
		exit(0);
	}
}

