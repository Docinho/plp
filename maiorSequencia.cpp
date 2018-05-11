#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
using namespace std;

int main() {
    int nEntradas = 0;
    int atual=0;
    int anterior = 0;
    int repeticoes = 0;
    int maiorRepeticoes = 0;

    cin>> nEntradas;
    cin>>atual;

    for (int i = 0; i<nEntradas-1; i++){

        anterior = atual;
        cin>>atual;
        if(anterior<atual){
            repeticoes = repeticoes + 1;
        } else if (maiorRepeticoes == 0 || maiorRepeticoes < repeticoes){

            maiorRepeticoes = repeticoes;

            repeticoes = 0;


        }

    }

    if(maiorRepeticoes == 0)
        maiorRepeticoes = repeticoes;


    if(maiorRepeticoes >0){
        maiorRepeticoes++;
    }
    cout<<maiorRepeticoes;
    return 0;
}
