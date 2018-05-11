#include <iostream>
#include <iterator>
#include <vector>
#include <vector>

using namespace std;

int main(){
    string var;
    cin>> var;

    for (int i = 0; i < var.size(); i++) {
        if (var[i]=='a' || var[i]=='e'){
            cout<<var[i]<<endl;
        }
        
    }
    return 0;
}

// int main()
// {
//   istream_iterator<char> iit(cin);

//   do 
//   {
//       cout << *iit;
//       iit++;
//   } 
//   while (*iit != 'z'); 

//   return 0;
// }

// int main()
// {
//     vector <string> v;
//     istream_iterator<string> iit(cin);
//     v.push_back(*iit);

//     for ( vector<string>::iterator i = v.begin(); i != v.end(); i++ ){
//         if(*i == "a"){
//             cout << *i <<endl;
//         }
//     }
    

//     return 0;
// }