#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
using namespace std;


bool ehPrimo(int n){
    bool isPrime = true;
    int i;
    for(i = 2; i < n / 2; ++i)
    {
      if(n % i == 0)
      {
          isPrime = false;
          break;
      }
    }
    return isPrime;
}
int main(){


    int numero;
    cin>>numero;

    int par1 = 1;
    int par2 = par1+2;


    while(par1<= numero && par2 <= numero) {
        //par2 = par1+2;

        if(ehPrimo(par2)) {
            cout<<par1<<" "<< par2<<endl;
            par1 = par2;
            par2 = par1 +2;

        } else{
            par1 = par1 + 1;
            par2 = par2 + 2;
        }
    }
    return 0;
}
