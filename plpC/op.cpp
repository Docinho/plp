#include <math.h>
#include <iostream>

using namespace std;

/* A língua do pê é uma lingua criada numa brincadeira de crianças. Na língua do pê cada palavra é repetida com o 
acréscimo de uma sílaba começada em P. Exemplo: "pedro tinha uma casa bonita" vira "pepedro patinha peuma pacasa pobonita". 
Faça um programa que identifique se uma palavra lida pode ser, ou não da língua do pê, isto é, se ela começa com "pa", "pe",
 "pi", "po" ou "pu". */ 

int main() {
    string palavra;
    cin>>palavra;

    if (palavra[0] == 'p'){
        if(palavra[1] == 'a' || palavra[1] == 'e' || palavra[1] == 'i' || palavra[1] == 'o' || palavra[1] == 'u') {
            cout<<'s'<<endl;
        }
    } else{
        cout<<'n'<<endl;
    }

    return 0;
}