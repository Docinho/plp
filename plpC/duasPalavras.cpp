#include <iostream>
int main()
{
   std::string palavra1,palavra2;
   std::cin>>palavra1,palavra2;
   std::cin>>palavra2;
   int tamanho1 = palavra1.length();
   int tamanho2 = palavra2.length();

   if(tamanho1>=tamanho2){
       std::cout<< palavra1<<std::endl;
   } else if (tamanho2>tamanho1){
       std::cout<<palavra2<<std::endl;
   }
   
   return 0;
}