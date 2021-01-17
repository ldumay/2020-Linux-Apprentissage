#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char**argv) {
	int retval;
	int status;
	int pchild1 = fork();
	if (-1 == pchild1) {	// Erreur au fork
		fprintf(stderr, "ERREUR AU FORK\n");
		exit(-1);
	}	
	if (0 == pchild1) { // code du fils
		sleep(1);
		exit(0);
	}
	else {	// code du père
		printf("PARENT : JE SUIS TON PERE et tu as le PID %d\n", pchild1);
		int pchild2 = fork();
		if (-1 == pchild2) {	// Erreur au fork
			fprintf(stderr, "ERREUR AU FORK\n");
			exit(-1);
		}	
		if (0 == pchild2) { // code du fils
			sleep(1);
			exit(0);
		}
		else {	// code du père
			printf("PARENT : JE SUIS TON PERE et tu as le PID %d\n", pchild2);
			int pchild3 = fork();
			if (-1 == pchild3) {	// Erreur au fork
				fprintf(stderr, "ERREUR AU FORK\n");
				exit(-1);
			}	
			if (0 == pchild3) { // code du fils
				sleep(1);
				exit(0);
			}
			else {	// code du père
				printf("PARENT : JE SUIS TON PERE et tu as le PID %d\n", pchild3);
				waitpid(pchild1, NULL, 0);
				waitpid(pchild2, NULL, 0);
				waitpid(pchild3, NULL, 0);
				printf("PARENT : All Childs have terminated\n");
				exit(0);
			}
		}
		exit(0);
	}
}
