#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
using namespace std;

int areaQuadrado(int lado) {
    return lado*lado;
}

int areaRetangulo(int base, int altura) {
    return base*altura;
}

float areaCirculo(int raio) {
    return 6.28*(raio*raio);
}

int main()
{
    string formaGeo;
    float area;
    cin>>formaGeo;
    
    if(formaGeo == "quadrado"){
        int lado;
        cin>>lado;
        cout<<areaQuadrado(lado)<<endl;
    } else if (formaGeo == "retangulo") {
        int base,altura;
        // cout<<"entrada";
        cin>>base>>altura;
        cout<<areaRetangulo(base,altura)<<endl;
    } else if(formaGeo == "circulo") {
        int raio;
        cin>> raio;
        cout<<areaCirculo(raio);
    }
   return 0;
}

