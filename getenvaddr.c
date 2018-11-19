/*
 * Author: Xdude736
 * Disclaimer: This is directly from Jon Erikson's Hacking, the art of Exploitation 2nd edition. Should be around pg 147
 */
 
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 
 int main(int argc, char *argv[]){
	char *ptr;
	
	if(argc < 3){
		printf("Usage: %s <environment var> <target program name>\n", argv[0]);
		exit(0);
	}
	
	ptr = getenv(argv[1]); //get env var location
	ptr += (strlen(argv[0]) - strlen(argv[2]))*2; //adjusts for program name
	printf("%s will be at %p\n", argv[1], ptr);
 }