#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
using namespace std;

int main() {
    string entrada;

    cin>>entrada;

    for (int i = 0; i <= entrada.size(); i++) {
        char atual = entrada[i];
        int freq = 1;
        if(atual != ' ') {
            for (int j = i; j <=entrada.size(); j++) {

                if (entrada[j] == atual) {
                    freq++;
                    entrada[j] = ' ';
                }
            }
        }
        cout<<freq;
    }

    return 0;
}
