#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main() {
    string str;
    const char s[2] = " ";
    cin>>str;
    char *token;
    string palavras [] = {};
    /* get the first token */
    token = strtok(str, s);
    
    int size = 20;
    // #Method 1
    // char *pointer;
    // pointer = new char[size];
    // delete pointer;
    // delete[] pointer;

    // #Method 2
    char *pointer;
    pointer = (char*) malloc(size * sizeof(char));
    // if(pointer == NULL):
    free(pointer);
    
    int indice = 0;
    /* walk through other tokens */
    while( token != NULL ) {
        pointer[indice++] = token;

        
        token = strtok(NULL, s);
    }
    
        return 0;
}