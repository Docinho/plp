# include <stdio.h>
# include <stdlib.h>

int main()
{
    char array[100];
    printf("whats your name?\n");
    scanf("%s",array);
    printf("hey %s!! How are you?\n", array);

    return 0;
}