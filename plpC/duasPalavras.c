# include <stdio.h>
# include <stdlib.h>

int main(){
    char palavra1[3];
    char palavra2[300];
    
    scanf("%s", palavra1);
    scanf("%s", palavra2);

    printf("%d",strlen(palavra1[0]));

    // printf("%s", palavra1);
    // for(int letra = 0; letra < 3; letra++) {
        
    //         printf("%c\n", palavra1[letra]);
        
    // }
    // if(sizeof(palavra1)>sizeof(palavra2)) {
    //     printf("%s", palavra1);
    // }
    return 0;
}